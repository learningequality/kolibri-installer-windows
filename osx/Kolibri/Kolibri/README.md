Kolibri Mac OS X Application
============================

This is the Xcode project for the Kolibri application.


## Requirements

Xcode 6.x or 7.x
Mac OS X Yosemite or El Capitan


## Features

1. Show status icon at the menu bar.
1. It uses the `/usr/local/bin/kolibri` executable to interface with the Kolibri server.
1. Provide menu to Start Kolibri, Stop Kolibri, and open Kolibri in browser.
1. Preferences dialog for admin tasks like setting a custom Kolibri data path.
1. Logs messages so they are accessible at the Logs tab of the Preferences dialog and the Console app.


## Notes:

* The application will not load if the `/usr/local/bin/kolibri` executable cannot be found.
* Refer to the `osx/release-docs/README.md` document for more details.
