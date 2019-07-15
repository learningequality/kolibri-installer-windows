#include "fle_win32_framework.h"
#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include "resource.h"
#include <iostream>
#include <filesystem>
#include <io.h>
#include <atlstr.h>
#include <fstream>

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

wchar_t * getStr(int strId) {

	/*
	Get the equivalent strings in the resource file.
	The installer will set the selected language in the KOLIBRI_GUI_LANG environment variable after the installation.
	I recommend when adding new language strings in resource file do it in a sublime text editor.
	*/
	CString str;
	int esLang = strId + 1;
	str.LoadString(strId);
	char * userEnv = getenv("KOLIBRI_GUI_LANG");
	if (userEnv != NULL)
	{
		if (userEnv == std::string("es_ES"))
		{
			str.LoadString(esLang);
		}
	}
	TCHAR* finalStr = new TCHAR[str.GetLength() + 1];
	lstrcpy(finalStr, str);
	return finalStr;
}

char * getKolibriLinkAddress() {
	/*
	This will return the current Kolibri running link url.
	It will fetch the PORT value from server.pid file.
	*/
	char * kolibriHomeEnv = getenv("KOLIBRI_HOME");
	if (kolibriHomeEnv == NULL) {
		kolibriHomeEnv = joinChr(getenv("HOMEPATH"), "\\.kolibri");
	}
	char * configName = "\\server.pid";
	char * pidFile = joinChr(kolibriHomeEnv, configName);
	char * httpLink = "";
	std::ifstream file(pidFile);
	if (file.is_open()) {
		std::string line;
		while (getline(file, line)) {
			if (isServerOnline("Kolibri session", joinChr("http://127.0.0.1:", line.c_str()))) {
				httpLink = joinChr("http://127.0.0.1:", line.c_str());
			}
		}
		file.close();
		return httpLink;
	}
	return "";
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
		window->sendTrayMessage(L"Kolibri", getStr(ID_STRING_1_en));
		buffer = 0;
	}
	else if (bufsize > MAX_SIZE)
	{
		char err_message[255];
		sprintf(err_message, "Error: the value of KOLIBRI_SCRIPT_DIR must be less than %d, but it was length %d. Please start Kolibri from the command line.", MAX_SIZE, bufsize);
		MessageBox(HWND_DESKTOP, getStr(ID_STRING_18_en), getStr(ID_STRING_19_en), MB_OK | MB_ICONINFORMATION);
		buffer = 0;
	}
	return;
}


void startServerAction()
{
	const DWORD MAX_SIZE = 255;
	char script_dir[MAX_SIZE];
	kolibriScriptPath(script_dir, MAX_SIZE);
	if (_access(script_dir, 0) == 0) {
		if (!runShellScript("kolibri.exe", "start", script_dir))
		{
			window->sendTrayMessage(L"Kolibri", getStr(ID_STRING_3_en));
		}
		else
		{
			needNotify = true;
			isServerStarting = true;
			window->sendTrayMessage(L"Kolibri", getStr(ID_STRING_4_en));
		}
	}
	else
	{
		window->sendTrayMessage(L"Kolibri", getStr(ID_STRING_5_en));
	}

}

void stopServerAction()
{
	const DWORD MAX_SIZE = 255;
	char script_dir[MAX_SIZE];
	kolibriScriptPath(script_dir, MAX_SIZE);
	if (!runShellScript("kolibri.exe", "stop", script_dir))
	{
		// Handle error.
	}
}

void loadBrowserAction()
{
	if (isServerOnline("Kolibri session", getKolibriLinkAddress()))
	{
		if (!loadBrowser(getKolibriLinkAddress()))
		{
			// Handle error.
			printConsole("Failed to open the Kolibri url.\n");
		}
	}
	else
	{
		startServerAction();
	}

}

void exitKolibriAction()
{

	if (ask(getStr(ID_STRING_6_en), getStr(ID_STRING_7_en)))
	{
		stopServerAction();
		window->sendTrayMessage(getStr(ID_STRING_8_en), getStr(ID_STRING_9_en));
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
			setConfigurationValue("DONT_START", "TRUE");
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

void serverStartingMsg() {
	if (isServerStarting) {
		window->sendTrayMessage(L"Kolibri", getStr(ID_STRING_4_en));
	}
}

void checkServerThread()
{
	// We can handle things like checking if the server is online and controlling the state of each component.
	if (isServerOnline("Kolibri session", getKolibriLinkAddress()))
	{
		mnuLoadBrowser->enable();
		if (needNotify)
		{
			if (isSetConfigurationValueTrue("RUN_OPEN_BROWSER"))
			{
				loadBrowserAction();
			}
			window->sendTrayMessage(getStr(ID_STRING_10_en), getStr(ID_STRING_11_en));
			needNotify = false;
		}

		isServerStarting = false;
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
		if (isServerOnline("Kolibri session", getKolibriLinkAddress()))
		{
			loadBrowserAction();
		}
		else 
		{
			MessageBox(HWND_DESKTOP, getStr(ID_STRING_12_en), getStr(ID_STRING_13_en), MB_OK | MB_ICONINFORMATION);
		}
		CloseHandle(hMutex);
		return false;
	}
	// Verify if there is an ongoing Kolibri installation.
	wchar_t * kolibriSetup = _wgetenv(L"KOLIBRI_SETUP");
	if (kolibriSetup != NULL) {
		if (findProcessId(kolibriSetup))
		{
			MessageBox(HWND_DESKTOP, getStr(ID_STRING_18_en), getStr(ID_STRING_19_en), MB_OK | MB_ICONINFORMATION);
			CloseHandle(hMutex);
			return false;
		}
	}
	startThread(NULL, TRUE, 3000, &checkServerThread);
	startThread(NULL, TRUE, 5000, &serverStartingMsg);
	window = new fle_TrayWindow(&hInstance);
	window->setTrayIcon("images\\logo48.ico");

	mnuLoadBrowser = new fle_TrayMenuItem(getStr(ID_STRING_14_en), &loadBrowserAction);
	mnuRunUserLogsIn = new fle_TrayMenuItem(getStr(ID_STRING_15_en), &runUserLogsInAction);
	mnuOpenBrowserOption = new fle_TrayMenuItem(getStr(ID_STRING_16_en), &runOpenBrowserOption);
	mnuExit = new fle_TrayMenuItem(getStr(ID_STRING_17_en), &exitKolibriAction);


	window->addMenu(mnuLoadBrowser);
	window->addMenu(mnuRunUserLogsIn);
	window->addMenu(mnuOpenBrowserOption);
	window->addMenu(mnuExit);

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
			printConsole("Failed to add startup schortcut.\n");
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
