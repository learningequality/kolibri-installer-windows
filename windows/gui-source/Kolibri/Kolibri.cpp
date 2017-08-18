#include "fle_win32_framework.h"
#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <iostream>
#include <filesystem>

#include <iostream>
#include <io.h> //for setting outputmode UNICODE
#include <fcntl.h> //contains _O_U16TEXT

// Get gettext(), textdomain(), bindtextdomain() declaration.
#include "libintl.h"
// Define shortcut for gettext().
#define _(string) gettext (string)
#include <locale>
#include <codecvt>
#include <string>

// Declare global stuff that you need to use inside the functions.
fle_TrayWindow * window;

fle_TrayMenuItem * mnuLoadBrowser;
fle_TrayMenuItem * mnuOptions;
fle_TrayMenuItem * mnuRunUserLogsIn;
fle_TrayMenuItem * mnuOpenBrowserOption;
fle_TrayMenuItem * mnuRunAtStartup;
fle_TrayMenuItem * mnuExit;

bool needNotify = false;
bool isServerStarting = false;

void kolibriScriptPath(char *buffer, const DWORD MAX_SIZE)
{
	/*
	Gets the path to Kolibri.bat script directory, from KOLIBRI_SCRIPT_DIR environment variable.
	KOLIBRI_SCRIPT_DIR should be set at install time to e.g. \Python\Scripts, or wherever pip puts the kolibri.bat script.
	:param char *buffer: the buffer to hold the path string. If KOLIBRI_SCRIPT_DIR is not set or is longer than MAX_SIZE, then this will be set to 0.
	:param const DWORD MAX_SIZE: the max size of the buffer parameter. Must be large enough for path string and terminating null byte.
	:returns: void
	*/
	LPCSTR kolibri_script_dir = "KOLIBRI_SCRIPT_DIR";
	DWORD bufsize = GetEnvironmentVariableA(kolibri_script_dir, buffer, MAX_SIZE);
	if (bufsize == 0)
	{
		window->sendTrayMessage(_("Kolibri"), _("Error: Environment variable KOLIBRI_SCRIPT_DIR is not set."));
		buffer = 0;
	}
	else if (bufsize > MAX_SIZE)
	{
		char err_message[255];
		sprintf(err_message, _("Error: the value of KOLIBRI_SCRIPT_DIR must be less than %d, but it was length %d. Please start Kolibri from the command line."), MAX_SIZE, bufsize);
		window->sendTrayMessage(_("Kolibri"), err_message);
		buffer = 0;
	}
	return;
}


void startServerAction()
{
	const DWORD MAX_SIZE = 255;
	char script_dir[MAX_SIZE];
	kolibriScriptPath(script_dir, MAX_SIZE);

	if (!runShellScript("kolibri.exe", "start", script_dir))
	{
		window->sendTrayMessage(_("Kolibri"), _("Error: Kolibri failed to start."));
	}
	else
	{
		needNotify = true;
		isServerStarting = true;
		window->sendTrayMessage("Kolibri", _("The server is starting... please wait"));
	}
}

void stopServerAction()
{
	const DWORD MAX_SIZE = 255;
	char script_dir[MAX_SIZE];
	kolibriScriptPath(script_dir, MAX_SIZE);
	if (!runShellScript("kolibri-stop.bat", "", script_dir))
	{
		// Handle error.
	}
	else
	{
		mnuLoadBrowser->disable();
	}
}

void loadBrowserAction()
{
	if (!loadBrowser("http://127.0.0.1:8080/learn"))
	{
		// Handle error.
	}
}

void exitKolibriAction()
{
	if (ask(_("Exiting..."), _("Are you sure you want to stop Kolibri?")))
	{
		stopServerAction();
		window->quit();
	}
}

void runUserLogsInAction()
{
	if (mnuRunUserLogsIn->isChecked())
	{
		if (!runShellScript("guitools.vbs", "1", NULL))
		{
			// Handle error.
			printConsole(_("Failed to remove startup schortcut.\n"));
		}
		else
		{
			mnuRunUserLogsIn->uncheck();
			setConfigurationValue("RUN_AT_LOGIN", "FALSE");
			setConfigurationValue("DONT_START", "TRUE");
		}
	}
	else
	{
		if (!runShellScript("guitools.vbs", "0", NULL))
		{
			// Handle error.
			printConsole(_("Failed to add startup schortcut.\n"));
		}
		else
		{
			mnuRunUserLogsIn->check();
			setConfigurationValue("RUN_AT_LOGIN", "TRUE");
		}
	}
}

void runOpenBrowserOption()
{
	if (mnuOpenBrowserOption->isChecked())
	{
		mnuOpenBrowserOption->uncheck();
		setConfigurationValue("RUN_OPEN_BROWSER", "FALSE");
		setConfigurationValue("OPEN_BROWSER_OPTION", "TRUE");
	}
	else
	{
		mnuOpenBrowserOption->check();
		setConfigurationValue("RUN_OPEN_BROWSER", "TRUE");
	}
}


void checkServerThread()
{
	// We can handle things like checking if the server is online and controlling the state of each component.
	if (isServerOnline(_("Kolibri session"), "http://127.0.0.1:8080/learn/#!/learn"))
	{
		mnuLoadBrowser->enable();
		if (needNotify)
		{
			if (isSetConfigurationValueTrue("RUN_OPEN_BROWSER"))
			{
				loadBrowserAction();
			}
			window->sendTrayMessage(_("Kolibri is running"), _("The server will be accessible locally at: http://127.0.0.1:8080/learn or you can select \"Load in browser.\""));
			needNotify = false;
		}

		isServerStarting = false;
	}
	else
	{
		if (!isServerStarting)
		{
			mnuLoadBrowser->disable();
		}
	}
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{

	// REF: http://stackoverflow.com/questions/8799646/preventing-multiple-instances-of-my-application
	// Prevent the Kolibri application to execute multiple instances.
	HANDLE hMutex = CreateMutexA(NULL, FALSE, "Kolibri");
	DWORD dwMutexWaitResult = WaitForSingleObject(hMutex, 0);
	if (dwMutexWaitResult != WAIT_OBJECT_0)
	{	
		MessageBoxA(NULL, _("Kolibri application is already running."), _("Kolibri information"), MB_ICONINFORMATION | MB_OK);
		CloseHandle(hMutex);
		return false;
	}
	startThread(NULL, TRUE, 3000, &checkServerThread);
	window = new fle_TrayWindow(&hInstance);
	window->setTrayIcon("images\\logo48.ico");

	mnuLoadBrowser = new fle_TrayMenuItem(_("Load in browser."), &loadBrowserAction);
	mnuOptions = new fle_TrayMenuItem(_("Options"), NULL);
	mnuRunUserLogsIn = new fle_TrayMenuItem(_("Run Kolibri at system startup."), &runUserLogsInAction);
	mnuOpenBrowserOption = new fle_TrayMenuItem(_("Open browser when Kolibri starts"), &runOpenBrowserOption);
	mnuExit = new fle_TrayMenuItem(_("Exit"), &exitKolibriAction);

	window->addMenu(mnuLoadBrowser);
	window->addMenu(mnuRunUserLogsIn);
	window->addMenu(mnuOpenBrowserOption);
	window->addMenu(mnuExit);

	mnuLoadBrowser->disable();

	startServerAction();
	
	//Set output Unicode without BOM
	_setmode(_fileno(stdout), _O_U16TEXT); //_O_WTEXT (with BOM)
										   //stdout may now be written to file (First character must be ASCII if output is written to file)
	std::wcout << L"Enabling Unicode support" << std::endl;

	//Set locale
	setlocale(LC_ALL, ""); //Set locale to environment

	//Gettext
	textdomain("cppgettext");
	bindtextdomain("cppgettext", "locale");

	// Load configurations.
	if (isSetConfigurationValueTrue("RUN_AT_LOGIN"))
	{
		mnuRunUserLogsIn->check();
	}

	if (!isSetConfigurationValueTrue("DONT_START"))
	{
		if (!runShellScript("guitools.vbs", "0", NULL))
		{
			// Handle error.
			printConsole(_("Failed to add startup schortcut.\n"));
		}
		else
		{
			mnuRunUserLogsIn->check();
			setConfigurationValue("RUN_AT_LOGIN", "TRUE");
		}
	}
	if (!isSetConfigurationValueTrue("OPEN_BROWSER_OPTION"))
	{
		mnuOpenBrowserOption->check();
		setConfigurationValue("RUN_OPEN_BROWSER", "TRUE");
	}

	window->show();

	return 0;
}
