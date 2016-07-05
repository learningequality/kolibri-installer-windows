Kolibri Installer for Windows
==========

This project provides a smoother way to install and run KA Lite in a Windows Machine.

---
#### This project was built using the following software:
* Windows 8.1 32 bit.
* Inno Setup 5.5.3 [Download] (http://files.jrsoftware.org/is/5/)
* Microsoft Visual Studio Community 2015 [Website] (https://www.visualstudio.com/)
* Git (note: install with the option to place the `git` executable in the path, so it can be run within `cmd`)

---
#### Instructions to build the GUI:
* Open `gui-source/Kolibri.sln` using Visual Studio.
* Click on the "Build" menu and then choose the "Build Solution" option.
* Copy the resulting `Kolibri.exe` from its output location to `gui-packed/Kolibri.exe`

---
### Signing the installer
In this directory you'll find a simple script called `sign_script.bat`.
That script is a template -- it is not functional!
Once you obtain our certificates and the necessary passwords, you can substitute them into that script in order to 
sign the installer for release.