Kolibri signing documentation
=============================


## Accounts needed

You'll need accounts with access to Learning Equality's organization on these services:

* [Buildkite](https://buildkite.com) account.
* [Google Cloud](https://cloud.google.com/) account.


## Setting up the Windows signing pipeline

* Create a Windows VM instance on Google Cloud
	- Log in to [Google Cloud](https://cloud.google.com/)
	- Follow [these instructions](https://cloud.google.com/compute/docs/instances/create-start-instance) to create the VM
	- To access the VM remotely use [RDP](https://www.microsoft.com/en-us/p/microsoft-remote-desktop/9wzdncrfj3ps)

* Set your Windows VM instance to be an agent of buildkite
	- Read the [buildkite agent](https://buildkite.com/docs/agent/v3) documentation
	- Install the `buildkite-agent` on your Windows VM instance
	- Edit the `buildkite-agent` config file and add the `tags="queue=windows-sign"` value
	- Copy the `\sign_script.bat` script file into the `buildkite-agent` folder
	- Edit the `sign_script.bat` and provide all the credentials that are needed inside the script

* Create a Kolibri buildkite pipeline (if the Kolibri pipeline already exists, skip this)
	- Read the [buildkite pipeline](https://buildkite.com/docs/pipelines) documentation
	- Use `https://github.com/learningequality/kolibri.git` as the Github repository

* Set up buildkite environment variables
	- In buildkite, navigate to Kolibri's `Pipeline Settings` > `Environment variables`
	- Add the environment variable `WINDOWS_SIGN_SCRIPT_PATH=C:\xxxx\sign_script.bat`
	- Replace `xxxx` above so the `sign_script.bat` file path is correct

* Build and sign a Kolibri Windows installer
	- Navigate to the Kolibri pipeline, and click `New Build`
	- Click `Options` and add the `SIGN_WINDOWS_INSTALLER=true` environment variable
	- Click `Create Build`

