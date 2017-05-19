#include "fle_win32_framework.h"
#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <iostream>
#include <filesystem>

// Declare global stuff that you need to use inside the functions.
fle_TrayWindow * window;

fle_TrayMenuItem * mnuStartServer;
fle_TrayMenuItem * mnuStopServer;
fle_TrayMenuItem * mnuLoadBrowser;
fle_TrayMenuItem * mnuOptions;
fle_TrayMenuItem * mnuRunUserLogsIn;
fle_TrayMenuItem * mnuRunAtStartup;
fle_TrayMenuItem * mnuAutoStart;
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
		window->sendTrayMessage("Kolibri", "Error: Environment variable KOLIBRI_SCRIPT_DIR is not set.");
		buffer = 0;
	}
	else if (bufsize > MAX_SIZE)
	{
		char err_message[255];
		sprintf(err_message, "Error: the value of KOLIBRI_SCRIPT_DIR must be less than %d, but it was length %d. Please start Kolibri from the command line.", MAX_SIZE, bufsize);
		window->sendTrayMessage("Kolibri", err_message);
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
		window->sendTrayMessage("Kolibri", "Error: Kolibri failed to start.");
	}
	else
	{
		mnuStartServer->disable();

		needNotify = true;
		isServerStarting = true;

		window->sendTrayMessage("Kolibri", "The server is starting... please wait");
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
		mnuStartServer->enable();
		mnuStopServer->disable();
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
	if (ask("Exiting...", "Really want to exit Kolibri?"))
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
			printConsole("Failed to remove startup schortcut.\n");
		}
		else
		{
			mnuRunUserLogsIn->uncheck();
			setConfigurationValue("RUN_AT_LOGIN", "FALSE");
		}
	}
	else
	{
		if (!runShellScript("guitools.vbs", "0", NULL))
		{
			// Handle error.
			printConsole("Failed to add startup schortcut.\n");
		}
		else
		{
			mnuRunUserLogsIn->check();
			setConfigurationValue("RUN_AT_LOGIN", "TRUE");
		}
	}
}

void runAtStartupAction()
{
	if (mnuRunAtStartup->isChecked())
	{
		if (!runShellScript("guitools.vbs", "5", NULL))
		{
			// Handle error.
			printConsole("Failed to remove task to run at startup.\n");
		}
		else
		{
			mnuRunAtStartup->uncheck();
			setConfigurationValue("RUN_AT_STARTUP", "FALSE");
		}
	}
	else
	{
		if (!runShellScript("guitools.vbs", "4", NULL))
		{
			// Handle error.
			printConsole("Failed to add task to run at startup.\n");
		}
		else
		{
			mnuRunAtStartup->check();
			setConfigurationValue("RUN_AT_STARTUP", "TRUE");
		}
	}
}

void autoStartServerAction()
{
	if (mnuAutoStart->isChecked())
	{
		mnuAutoStart->uncheck();
		setConfigurationValue("AUTO_START", "FALSE");
	}
	else
	{
		mnuAutoStart->check();
		setConfigurationValue("AUTO_START", "TRUE");
	}
}

void checkServerThread()
{
	// We can handle things like checking if the server is online and controlling the state of each component.
	if (isServerOnline("Kolibri session", "http://127.0.0.1:8080/learn/#!/learn"))
	{
		mnuStartServer->disable();
		mnuStopServer->enable();
		mnuLoadBrowser->enable();

		if (needNotify)
		{
			window->sendTrayMessage("Kolibri is running", "The server will be accessible locally at: http://127.0.0.1:8080/learn or you can select \"Load in browser.\"");
			needNotify = false;
		}

		isServerStarting = false;
	}
	else
	{
		if (!isServerStarting)
		{
			mnuStartServer->enable();
			mnuStopServer->disable();
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
		MessageBox(HWND_DESKTOP, TEXT("Kolibri application is already running. \nRight click the Kolibri icon in the task-tray to start the server."), TEXT("Kolibri information"), MB_OK | MB_ICONINFORMATION);
		CloseHandle(hMutex);
		return false;
	}

	startThread(NULL, TRUE, 3000, &checkServerThread);
	window = new fle_TrayWindow(&hInstance);
	window->setTrayIcon("images\\logo48.ico");

	mnuStartServer = new fle_TrayMenuItem("Start Server.", &startServerAction);
	mnuStopServer = new fle_TrayMenuItem("Stop Server.", &stopServerAction);
	mnuLoadBrowser = new fle_TrayMenuItem("Load in browser.", &loadBrowserAction);
	mnuOptions = new fle_TrayMenuItem("Options", NULL);
	mnuRunUserLogsIn = new fle_TrayMenuItem("Run Kolibri when the user logs in.", &runUserLogsInAction);
	//mnuRunAtStartup = new fle_TrayMenuItem("Run Kolibri at system startup.", &runAtStartupAction);
	mnuAutoStart = new fle_TrayMenuItem("Auto-start server when Kolibri is run.", &autoStartServerAction);
	mnuExit = new fle_TrayMenuItem("Exit Kolibri.", &exitKolibriAction);

	mnuOptions->setSubMenu();
	mnuOptions->addSubMenu(mnuRunUserLogsIn);
	//mnuOptions->addSubMenu(mnuRunAtStartup);
	mnuOptions->addSubMenu(mnuAutoStart);

	window->addMenu(mnuStartServer);
	window->addMenu(mnuStopServer);
	window->addMenu(mnuLoadBrowser);
	window->addMenu(mnuOptions);
	window->addMenu(mnuExit);

	mnuStopServer->disable();
	mnuLoadBrowser->disable();

	// Load configurations.
	if (isSetConfigurationValueTrue("RUN_AT_LOGIN"))
	{
		mnuRunUserLogsIn->check();
	}
	//if (isSetConfigurationValueTrue("RUN_AT_STARTUP"))
	//{
	//	mnuRunAtStartup->check();
	//}
	if (isSetConfigurationValueTrue("AUTO_START"))
	{
		mnuAutoStart->check();
		startServerAction();
	}

	window->show();

	return 0;
}
