#include "fle_win32_framework.h"
#include "spirit_po\spirit_po.hpp"
#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <filesystem>
#include <iostream>
#include <fstream>
#include <string>
#include <io.h>

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

using defaultCatalog = spirit_po::catalog<>;

/*
Get the po file base in current user locale.
If the current user locale does not exist it will default in en locale .po file.
*/
std::string poFilePath() {
	TCHAR pwd[MAX_PATH];
	GetCurrentDirectory(MAX_PATH, pwd); // Get the current application directory path.
	std::wstring appPathStr(&pwd[0]); //convert to wstring
	std::wstring localeDir = appPathStr + L"\\locale\\";
	std::wstring poFilename = L"\\kolibri-application.po";
	std::wstring enLang = L"en";

	LCID lcid = GetUserDefaultLCID();
	wchar_t defaultLocaleCode[LOCALE_NAME_MAX_LENGTH];
	DWORD error = ERROR_SUCCESS;
	//Evaluate locale
	LCIDToLocaleName(lcid, defaultLocaleCode, LOCALE_NAME_MAX_LENGTH, 0);
	std::wstring userLocalStr(defaultLocaleCode); // Get user locale

	std::wstring defaultLocalePath = localeDir + enLang + poFilename;
	std::wstring userLocalePath = localeDir + userLocalStr + poFilename;

	std::string userLocalPathStr(userLocalePath.begin(), userLocalePath.end());
	// Check `userLocalPathStr` file is exist.
	if (_access(userLocalPathStr.c_str(), 0) == 0) {
		defaultLocalePath = userLocalePath;
	}
	std::string defaultLangStr(defaultLocalePath.begin(), defaultLocalePath.end());
	std::ifstream ifs(defaultLangStr);
	std::string po_file{ std::istreambuf_iterator<char>{ifs}, std::istreambuf_iterator<char>() };
	return po_file;
}

defaultCatalog cat{ defaultCatalog::from_range(poFilePath()) };
char *fleTrans(const char *str) {
	return  (char *)cat.gettext(str);
}

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
		window->sendTrayMessage(fleTrans("Kolibri"), fleTrans("Error: Environment variable KOLIBRI_SCRIPT_DIR is not set."));
		buffer = 0;
	}
	else if (bufsize > MAX_SIZE)
	{
		char err_message[255];
		sprintf(err_message, fleTrans("Error: the value of KOLIBRI_SCRIPT_DIR must be less than %d, but it was length %d. Please start Kolibri from the command line."), MAX_SIZE, bufsize);
		window->sendTrayMessage(fleTrans("Kolibri"), err_message);
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
		window->sendTrayMessage(fleTrans("Kolibri"), fleTrans("Error: Kolibri failed to start."));
	}
	else
	{
		needNotify = true;
		isServerStarting = true;
		window->sendTrayMessage(fleTrans("Kolibri"), fleTrans("Kolibri is starting... Please wait."));
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
	if (ask(fleTrans("Exiting..."), fleTrans("Are you sure you want to stop Kolibri?")))
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
			printConsole(fleTrans("Failed to remove startup schortcut.\n"));
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
			printConsole(fleTrans("Failed to add startup schortcut.\n"));
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
	if (isServerOnline("Kolibri session", "http://127.0.0.1:8080/learn/#!/learn"))
	{
		mnuLoadBrowser->enable();
		if (needNotify)
		{
			if (isSetConfigurationValueTrue("RUN_OPEN_BROWSER"))
			{
				loadBrowserAction();
			}
			window->sendTrayMessage(fleTrans("Kolibri is running"), fleTrans("Kolibri is now accessible locally at: http://127.0.0.1:8080. Select \"Load in browser to view it.\""));
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
		MessageBoxA(HWND_DESKTOP, fleTrans("Kolibri application is already running."), fleTrans("Kolibri information"), MB_OK | MB_ICONINFORMATION);
		CloseHandle(hMutex);
		return false;
	}
	startThread(NULL, TRUE, 3000, &checkServerThread);
	window = new fle_TrayWindow(&hInstance);
	window->setTrayIcon("images\\logo48.ico");

	mnuLoadBrowser = new fle_TrayMenuItem(fleTrans("Load in browser."), &loadBrowserAction);
	mnuOptions = new fle_TrayMenuItem(fleTrans("Options"), NULL);
	mnuRunUserLogsIn = new fle_TrayMenuItem(fleTrans("Run Kolibri at system startup."), &runUserLogsInAction);
	mnuOpenBrowserOption = new fle_TrayMenuItem(fleTrans("Open browser when Kolibri starts"), &runOpenBrowserOption);
	mnuExit = new fle_TrayMenuItem(fleTrans("Exit"), &exitKolibriAction);

	window->addMenu(mnuLoadBrowser);
	window->addMenu(mnuRunUserLogsIn);
	window->addMenu(mnuOpenBrowserOption);
	window->addMenu(mnuExit);

	mnuLoadBrowser->disable();

	startServerAction();

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
			printConsole(fleTrans("Failed to add startup schortcut.\n"));
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
