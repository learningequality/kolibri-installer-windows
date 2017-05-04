#include "fle_win32_framework.h"
#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <iostream>
#include <filesystem>

// Declare global stuff that you need to use inside the functions.
fle_TrayWindow * window;

fle_TrayMenuItem * menu1;
fle_TrayMenuItem * menu2;
fle_TrayMenuItem * menu3;
fle_TrayMenuItem * menu4;
fle_TrayMenuItem * menu5;
fle_TrayMenuItem * menu6;
fle_TrayMenuItem * menu7;
fle_TrayMenuItem * menu8;

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
	}
	else if (bufsize > MAX_SIZE)
	{
		char err_message[255];
		sprintf(err_message, "Error: the value of KOLIBRI_SCRIPT_DIR must be less than %d, but it was length %d. Please start Kolibri from the command line.", MAX_SIZE, bufsize);
		window->sendTrayMessage("Kolibri", err_message);
	}
	char script_dirs[26] = "c:\\Python27\\Scripts";
	struct stat info;
	if (stat(buffer, &info) != 0)
		buffer = strcpy(buffer, script_dirs);
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
		menu1->disable();

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
		menu1->enable();
		menu2->disable();
		menu3->disable();
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
	if (menu5->isChecked())
	{
		if (!runShellScript("guitools.vbs", "1", NULL))
		{
			// Handle error.
			printConsole("Failed to remove startup schortcut.\n");
		}
		else
		{
			menu5->uncheck();
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
			menu5->check();
			setConfigurationValue("RUN_AT_LOGIN", "TRUE");
		}
	}
}

void runAtStartupAction()
{
	if (menu6->isChecked())
	{
		if (!runShellScript("guitools.vbs", "5", NULL))
		{
			// Handle error.
			printConsole("Failed to remove task to run at startup.\n");
		}
		else
		{
			menu6->uncheck();
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
			menu6->check();
			setConfigurationValue("RUN_AT_STARTUP", "TRUE");
		}
	}
}

void autoStartServerAction()
{
	if (menu7->isChecked())
	{
		menu7->uncheck();
		setConfigurationValue("AUTO_START", "FALSE");
	}
	else
	{
		menu7->check();
		setConfigurationValue("AUTO_START", "TRUE");
	}
}

void checkServerThread()
{
	// We can handle things like checking if the server is online and controlling the state of each component.
	if (isServerOnline("Kolibri session", "http://127.0.0.1:8080/learn/#!/learn"))
	{
		menu1->disable();
		menu2->enable();
		menu3->enable();

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
			menu1->enable();
			menu2->disable();
			menu3->disable();
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

	menu1 = new fle_TrayMenuItem("Start Server.", &startServerAction);
	menu2 = new fle_TrayMenuItem("Stop Server.", &stopServerAction);
	menu3 = new fle_TrayMenuItem("Load in browser.", &loadBrowserAction);
	menu4 = new fle_TrayMenuItem("Options", NULL);
	menu5 = new fle_TrayMenuItem("Run Kolibri when the user logs in.", &runUserLogsInAction);
	//menu6 = new fle_TrayMenuItem("Run Kolibri at system startup.", &runAtStartupAction);
	menu7 = new fle_TrayMenuItem("Auto-start server when Kolibri is run.", &autoStartServerAction);
	menu8 = new fle_TrayMenuItem("Exit Kolibri.", &exitKolibriAction);

	menu4->setSubMenu();
	menu4->addSubMenu(menu5);
	//menu4->addSubMenu(menu6);
	menu4->addSubMenu(menu7);

	window->addMenu(menu1);
	window->addMenu(menu2);
	window->addMenu(menu3);
	window->addMenu(menu4);
	window->addMenu(menu8);

	menu2->disable();
	menu3->disable();

	// Load configurations.
	if (isSetConfigurationValueTrue("RUN_AT_LOGIN"))
	{
		menu5->check();
	}
	//if (isSetConfigurationValueTrue("RUN_AT_STARTUP"))
	//{
	//	menu6->check();
	//}
	if (isSetConfigurationValueTrue("AUTO_START"))
	{
		menu7->check();
		startServerAction();
	}

	window->show();

	return 0;
}
