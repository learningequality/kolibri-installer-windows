Kolibri Installer for Windows
==========

This project provides a smoother way to install and run Kolibri in a Windows Machine.

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

Note: If you have made no changes to `gui-source`, you don't have to build `Kolibri.exe`. Just use the version in this repo.

Note: If you *do* make changes to anything in `gui-source`, be sure to build and commit `Kolibri.exe`.

---
#### Instructions to build "kolibri-static":

* Clone Kolibri https://github.com/learningequality/kolibri repository;
* In Windows, run the following command from kolibri directory:
* > python.exe setup.py sdist --static --format=zip
* The output file named "kolibri-static-x.x.x.zip" will appear within the kolibri/dist project folder.

---
#### Instructions to build "KolibriSetup.exe":

* Clone this repository;
* Follow the `Instructions to build "kolibri-static"` and copy the `kolibri\dist\kolibri-static-x.x.x.zip` file to this directory.
* Set the environment variable KOLIBRI_BUILD_VERSION to the desired version for the installer, e.g. `0.0.1`.
  This should match the version in the sdist *exactly*, so `kolibri-static-0.0.1.zip` means that `Kolibri_BUILD_VERSION`
  should have the value `0.0.1`.
* Set environment variable using command prompt: > setx KOLIBRI_BUILD_VERSION 0.0.1
* In Windows, run the following command from this directory:
> make.vbs
* The output file named "KolibriSetup-X.X.X.exe" will appear within this project folder.

---
#### To clone kolibri and this repository, run the following lines:

* git clone https://github.com/mrpau/kolibri-installers.git
* git clone https://github.com/learningequality/kolibri.git

---
#### References:

Distribution and Installer http://kolibri.readthedocs.io/en/latest/dev/building.html
