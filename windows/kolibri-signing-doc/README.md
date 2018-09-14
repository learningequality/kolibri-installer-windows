Kolibri signing documentation
=============================


#### Accounts requirement:
* [Buildkite](https://buildkite.com) account.
* [Google cloud](https://cloud.google.com/) account.


#### Instructions to setup the Windows signing:
* Create a Windows VM instance at the google cloud.
	- Log in at the [Google cloud](https://cloud.google.com/).
	- Follow this [instructions](https://cloud.google.com/compute/docs/instances/create-start-instance) to create an WIndows VM instance.
	- To access the Windows VM remotely use the [RDP](https://www.microsoft.com/en-us/p/microsoft-remote-desktop/9wzdncrfj3ps).

* To set your Windows Vm instance as an agent of buildkite.
	- Read the [buildkite agent](https://buildkite.com/docs/agent/v3) documentation.
	- After you installed the `buildkite-agent` on your Windows VM instance.
	- Edit the `buildkite-agent` config file and add the `tags="queue=windows-sign"` value.
	- Copy the `\sign_script.bat` script file into the `buildkite-agent` folder.
	- Edit the `sign_script.bat` and provide all the credentials that's needed inside the script.

* Create a kolibri buildkite pipeline (This is optional, If Kolibri pipeline already exist, skip this.).
	- Read the [buildkite pipeline](https://buildkite.com/docs/pipelines) documentation.
	- Use the `https://github.com/learningequality/kolibri.git` as Github repository.

* After the kolibri pipeline created.
	- Navigate at the kolibri `Pipeline Settings` > `Environment variables`.
	- And add the value `WINDOWS_SIGN_SCRIPT_PATH=C:\xxxx\sign_script.bat` environment variable.
	- The `sign_script.bat` file must be at the relative path.

* To build and sign a Kolibri Windows installer.
	- Navigate at the kolibri pipeline, and click the `New Build` button. 
	- Click the `Options` button and Add the `SIGN_WINDOWS_INSTALLER=true` Environment Variable value.
	- Click `Create Build` button.

