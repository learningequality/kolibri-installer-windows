Kolibri Installer for Windows
==========

This project provides a smoother way to install and run Kolibri in a Windows Machine.

---
#### This project was built using the following software:

* Windows 8.1 32/64bit or Windows 10 32/64bit
* Inno Setup 5.5.9 unicode [Download] (http://www.jrsoftware.org/download.php/is-unicode.exe)
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

* Follow the [steps](http://kolibri.readthedocs.io/en/latest/dev/getting_started.html) to setup the Kolibri.
* In the command line, run the `make dist` command in /kolibri directory.
* The output file named "kolibri_static-x.x.x.devxxxx-py2.py3-none-any.whl" will appear within the kolibri/dist project folder.

---
#### Instructions to build "KolibriSetup.exe":

* Clone this repository;
* Follow the `Instructions to build "kolibri-static"` and copy the `kolibri\dist\kolibri_static-x.x.x-py2.py3-none-any.whl`.file to this directory.
* Run the following command from this directory:
> make.bat
* The output file named "KolibriSetup-X.X.X.exe" will appear within this project folder.

Note: Building is not supported/recommended in Windows 7. However, builds have been tested to work on an updated Windows 7.

---
#### Instructions to extract and encode translatable strings from Inno setup .isl file:
* To extract the translable strings from the Inno setup `.isl` file into `.po` file:
	- At the `/python-scripts` directory run the `extract-isl-strings.py` 
	- A sample command to run the script `python extract-isl-string.py /xxx/xxx.isl`
	- The agument `.isl` file can be found at this path `inno-compiler/Default.isl`
	- It will create a `/kolibri-installer.po` at this path `/python-scripts`.

* To encode translated strings from `.po` into Inno setup `.isl` file.
	- At the `/python-scripts` directory run the `encode-strings.py`
	- A sample command to run the script `python2.7 ./extract-isl-string.py  /xxx/xxx.isl /xxxx/kolibri-installer.po`
	- After the script ran it will ask for the language name, [language id](https://msdn.microsoft.com/en-us/library/dd318693.aspx) and [language code page](https://msdn.microsoft.com/en-us/library/cc195052.aspx).
	- The output filename will be the specified language name.

---
#### To clone kolibri and this repository, run the following lines:

* git clone https://github.com/mrpau/kolibri-installers.git
* git clone https://github.com/learningequality/kolibri.git

---
#### References:

Distribution and Installer http://kolibri.readthedocs.io/en/latest/dev/building.html
