Kolibri Installer for Windows
==========

This project provides a smoother way to install and run Kolibri in a Windows Machine.

---
#### This project was built using the following software and C++ library:
* Windows 8.1 32 bit.
* Inno Setup 5.5.3 [Download] (http://files.jrsoftware.org/is/5/)
* Microsoft Visual Studio Community 2015 [Website] (https://www.visualstudio.com/)
* Poedit [Downlaod] (https://poedit.net/)
* Spirit_po [Github][https://github.com/cbeck88/spirit-po] 
* Git (note: install with the option to place the `git` executable in the path, so it can be run within `cmd`)

---
#### Instructions to build the GUI:
* Open `gui-source/Kolibri.sln` using Visual Studio.
* Click on the "Build" menu and then choose the "Build Solution" option.
* Copy the resulting `Kolibri.exe` from its output location to `gui-packed/Kolibri.exe`

Note: If you have made no changes to `gui-source`, you don't have to build `Kolibri.exe`. Just use the version in this repo.

Note: If you *do* make changes to anything in `gui-source`, be sure to build and commit `Kolibri.exe`.

---
#### Instructions to generate `kolibri-application.po` file from `kolibri.cpp`:
1. Downlaod and install [Poedit](https://poedit.net/).
2. Open Poedit and save a new .po file under: 
	* $(ProjectDir)/External/locale/en/kolibri-application.po
3. In Poedit with `kolbri-application.po` opened:
	* Catalogue -> Properties -> Sources keywords -> Add new keyword `fleTrans`
	* Catalogue -> Properties -> Sources paths -> Paths -> Add files... -> kolibri.cpp
	* Catalogue -> Update from sources
	* Save

Note: If you have made no changes to `gui-source`, you don't have to to generate `kolibri-application.po`. Just use the version in this repo.

---
#### Instructions to build "kolibri-static":

* Follow the [steps](http://kolibri.readthedocs.io/en/latest/dev/getting_started.html) to setup the Kolibri.
* In the command line, run the `make dist` command in /kolibri directory.
* The output file named "kolibri_static-x.x.x.devxxxx-py2.py3-none-any.whl" will appear within the kolibri/dist project folder.

---
#### Instructions to build "KolibriSetup.exe":

* Clone this repository;
* Follow the `Instructions to build "kolibri-static"` and copy the `kolibri\dist\kolibri_static-x.x.x-py2.py3-none-any.whl`.file to this directory.
* Set the environment variable KOLIBRI_BUILD_VERSION to the desired version for the installer, e.g. `0.0.1`.
  This should match the version in the sdist *exactly*, so `kolibri_static-0.0.1-py2.py3-none-any.whl` means that `KOLIBRI_BUILD_VERSION``
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
