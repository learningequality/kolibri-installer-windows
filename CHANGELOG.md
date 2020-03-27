# Release Notes

List of the most important changes for each release.

## 1.3.6

- FIXED: Update alert message and fix typo error.
- FIXED: Fix `pip.exe` not found error.

## 1.3.5

- ADDED: Integrate the latest translations from Crowdin.
- FIXED: v0.13.0-beta1 installer on Windows not working.

## 1.3.4

- CHANGED: Update `README.md` and merge develop to master branch.

## 1.3.3

- FIXED: Migrate translation files to UTF-8
- FIXED: Infinite "server is starting" notification
- FIXED: Remove the duplicated structure (and files) of the repo.

([1.3.1 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/8))


## 1.3.2

- FIXED: Spanish translations and encoding


## 1.3.1

- ADDED: Update the uninstall script - confirm removal of Kolibri and it's content folder, also includes error logging during uninstall.
- ADDED: Add a setup logging and enhance the error messages
- ADDED: Make the kolibri.exe runnable from any path in the Windows Command Prompt.
- FIXED: Notification message port did not match the Kolibri server port.
- FIXED: Issue installing Windows 10 when needing to upgrade to Python3.4.3
- NOT-AN-ISSUE: Kolibri might not be fully shut down during upgrade

([1.3.1 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/7))


## 1.3.0

- CHANGED: Improve the signing process and installer display

([1.3.0 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/6))


## 1.2.1

- ADDED: Document the Windows installer signing at the buildkite.
- CHANGED: ensure port is correct if changed and other config options are respected
- FIXED: Improve the Python installer alerts
- FIXED: Eliminate the shortcut creation step
- FIXED: Remove the existing Kolibri installed files at the Python2.7 during upgrade.
- FIXED: 'load in browser' is disabled when the server is not running

([1.2.1 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/5))


## 1.2.0

- CHANGED: Update built in Python installer from 2.7.13 into 3.4.3
- CHANGED: When server is running and desktop icon is launched, open web browser to Kolibri 
- FIXED: Font/Encoding issue in Spanish, with Python 3 installer
- FIXED: Update "Kolibri on the Web" links
- FIXED: In the middle of installing kolibri the system Restarts ? Why ?

([1.2.0 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/4))


## 1.1.2

- FIXED: Sign the Kolibri executable.

([1.1.2 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/3))


## 1.1.1

- FIXED: windows installer can take a very long time during final step
- FIXED: windows 10 notifications cause an audible, annoying 'ding'

([1.1.1 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/2))


## 1.1.0

- ADDED: pop up tray menu on left or right click
- ADDED: internationalize installer and GUI
- ADDED Support Unicode Character in Kolibri windows application.
- FIXED: Kolibri uninstaller is not showing in Windows 8 and 10
- FIXED: Localization issue in the setup step
- FIXED: remove 'accept license' step from installer
- FIXED: License text translations missing
- FIXED: uninstaller buttons are not translated
- FIXED: 'launch kolibri' is not translated

([1.1.0 Github milestone](https://github.com/learningequality/kolibri-installer-windows/milestone/1))
