Kolibri Installer for Windows
==========

This project provides a smoother way to install and run Kolibri in a Windows machine.

---
#### This project was built using the following software:

* Windows 8.1 32/64bit or Windows 10 32/64bit
* Inno Setup 5.5.9 Unicode [Download] (http://files.jrsoftware.org/is/5/)
* Microsoft Visual Studio Community 2015 [Website] (https://www.visualstudio.com/)
* Git (Note: Install with the option to place the `git` executable in the path, so it can be run within `cmd`.)

---
#### Instructions to build the GUI:
1. Open `gui-source/Kolibri.sln` using Visual Studio.
1. Click on the `Build` menu and then choose the `Build Solution` option.
1. Copy the resulting `Kolibri.exe` from its output location to `gui-packed/Kolibri.exe`

Notes: 

1. If you have made no changes to `gui-source`, you don't have to build `Kolibri.exe`, just use the version in this repo.
1. If you *do* make changes to anything in `gui-source`, be sure to build and commit `Kolibri.exe`.
1. There is an outstanding issue to ["Remove the Kolibri.exe executable from the repo."](https://github.com/learningequality/kolibri-installer-windows/issues/112) to address this.

---
#### Instructions to build "kolibri-static":

1. Follow the [steps](http://kolibri.readthedocs.io/en/latest/dev/getting_started.html) to setup Kolibri.
1. In the command line, run the `make dist` command in `/kolibri` directory.
1. The output file named `kolibri_static-x.x.x.devxxxx-py2.py3-none-any.whl` will appear within the kolibri/dist project folder.

---
#### Instructions to build "KolibriSetup-*.exe" via Inno Setup:

1. Clone this repository;
1. Follow the `Instructions to build "kolibri-static"` and copy the `kolibri\dist\kolibri_static-x.x.x-py2.py3-none-any.whl`.file to this directory.
1. Run the following command from this directory:
    > make.bat
1. The output file named "KolibriSetup-X.X.X.exe" will appear within this project folder.

---
#### Run the project using Inno Setup for Development:

1. Clone this repository.
1. Download and install Inno Setup from the above link.
1. Set the `KOLIBRI_BUILD_VERSION` environment variable.  Example: "v0.12.6"
1. Copy the contents of the `windows\inno-compiler\Languages\` folder into `C:\Program Files (x86)\Inno Setup 5\Languages\` - these are `*.isl` files.
1. If you don't have a `.whl` file yet - download a `.whl` from the [Kolibri releases](https://github.com/learningequality/kolibri/releases) page then copy it into the root of the repo folder.  You may also follow the `"Instructions to build "kolibri-static""` section.
1. Double-click the `installer-source/KolibriSetupScript.iss` file to open it in Inno Setup.
1. Press the `Run` button.

Note: Building is not supported/recommended in Windows 7. However, builds have been tested to work on an updated Windows 7.

---
#### Instructions to extract and encode translatable strings from Inno setup .isl file:
1. To extract the translable strings from the Inno setup `.isl` file into `.po` file:
    - At the `/python-scripts` directory run the `extract-isl-strings.py` 
    - A sample command to run the script `python extract-isl-string.py /xxx/xxx.isl`
    - The agument `.isl` file can be found at this path `inno-compiler/Default.isl`
    - It will create a `/kolibri-installer.po` at this path `/python-scripts`.

1. To encode translated strings from `.po` into Inno setup `.isl` file.
    - At the `/python-scripts` directory run the `encode-strings.py`
    - A sample command to run the script `python2.7 ./extract-isl-string.py  /xxx/xxx.isl /xxxx/kolibri-installer.po`
    - After the script ran it will ask for the language name, [language id](https://msdn.microsoft.com/en-us/library/dd318693.aspx) and [language code page](https://msdn.microsoft.com/en-us/library/cc195052.aspx).
    - The output filename will be the specified language name.

---
#### To clone Kolibri and this repository, run the following lines:

* `git clone https://github.com/mrpau/kolibri-installers.git`
* `git clone https://github.com/learningequality/kolibri.git`

---
#### References:

Distribution and Installer http://kolibri.readthedocs.io/en/latest/dev/building.html
