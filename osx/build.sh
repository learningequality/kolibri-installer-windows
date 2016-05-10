#!/bin/bash
# set -ex
# The above is very useful during debugging.
#
# **************************************************
# Build script for Kolibri OS X Installer.
#

# Requirements:
# . wget
# . Packages by Sudre
# . Xcode 7.2.x
# . environment variables:
#     . IS_KOLIBRI_RELEASE == optional, only needed to codesign the .app and .pkg packages


# Steps
# 1. Check for valid arguments in terminal.
# 2. Check if requirements are installed: packages, wget.
# 3. Create temporary directory `temp`.
# 4. Get Pyrun, then insert path to the Pyrun binaries in $PATH so Pyrun's python runs first instead of the system python.
# 5. Upgrade Pyrun's Pip
# 6. TODO(cpauya): Unpack the kolibri*.tar.gz and run `pyrun setup.py install`
# 7. TODO(cpauya): Build the Xcode project.
# 8. TODO(cpauya): Codesign the built .app if IS_KOLIBRI_RELEASE is set.
# 9. TODO(cpauya): Run Packages script to build the .pkg.


# MUST: test the signed .pkg or .app on a target Mac with:
# . pkgutil --check-signature KA-Lite.pkg -- or;
# . pkgutil --check-signature KA-Lite.app -- or;
# . spctl --assess --type install KA-Lite.pkg


# TODOS:
# . Content packs?
# . Will Pyrun need to pip install requirements.txt for Kolibri dependencies?
# . Still uses Pyrun, we must find an alternative like [Pex](https://engineering.twitter.com/university/videos/wtf-is-pex)


HELP="
Build script for Kolibri OS X Installer.

USAGE: ./build.sh <path to kolibri sdist .tar.gz>

EXAMPLE: ./build.sh /tmp/kolibri/dist/kolibri-0.0.1.tar.gz

ARGUMENTS:
    \$1 == \$KOLIBRI_SDIST_FILE == required, location of the Kolibri sdist.tar.gz
"

echo "Kolibri OS X installer build script."

STEP=0
STEPS=9


# Check the arguments
((STEP++))
echo "$STEP/$STEPS. Checking the arguments..."

# Check if an argument was passed as URL for the script and use that instead.
if [ -z "$1" ]; then
    echo "... a required argument is missing."
    echo "$HELP"
    exit 1
else
    echo "... Checking validity of $1..."
    if [ -f "$1" ]; then
        # Use the argument as the kolibri sdist tar.
        KOLIBRI_SDIST_FILE="$1"
    else
        echo "... Abort!  The '$1' file does not exist!"
        exit 1
    fi
fi


((STEP++))
echo "$STEP/$STEPS. Checking if requirements are installed..."

PACKAGES_EXEC="packagesbuild"
if ! command -v $PACKAGES_EXEC >/dev/null 2>&1; then
    echo ".. Abort! 'packagesbuild' is not installed."
    exit 1
fi

WGET_EXEC="wget"
if ! command -v $WGET_EXEC >/dev/null 2>&1; then
    echo ".. Abort! 'wget' is not installed."
    exit 1
fi

XCODEBUILD_EXEC="xcodebuild"
if ! command -v $XCODEBUILD_EXEC >/dev/null 2>&1; then
    echo ".. Abort! 'xcodebuild' is not installed."
    exit 1
fi

echo "... OK."


# REF: http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself/4774063#comment15185627_4774063
SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
TEMP_DIR="temp"
WORKING_DIR="$SCRIPTPATH/$TEMP_DIR"


# Create temporary directory
((STEP++))
echo "$STEP/$STEPS. Checking '$WORKING_DIR' temporary directory..."
if ! [ -d "$WORKING_DIR" ]; then
    echo ".. Creating temporary directory named '$WORKING_DIR'..."
    mkdir "$WORKING_DIR"
fi


((STEP++))
echo "$STEP/$STEPS. Checking Github source..."

KOLIBRI="kolibri"
KOLIBRI_DIR="$WORKING_DIR/$KOLIBRI"


((STEP++))
echo "$STEP/$STEPS. Checking Pyrun..."

INSTALL_PYRUN_URL="https://downloads.egenix.com/python/install-pyrun"
INSTALL_PYRUN="$WORKING_DIR/install-pyrun.sh"
# TODO(cpauya): Let's support the latest
PYRUN_NAME="pyrun-2.7"
PYRUN_DIR="$WORKING_DIR/$PYRUN_NAME"
PYRUN_BIN="$PYRUN_DIR/bin"
PYRUN="$PYRUN_BIN/pyrun"
PYRUN_PIP="$PYRUN_BIN/pip"

# Don't download Pyrun if there's already a `pyrun-2.7` directory.
if [ -d "$PYRUN_DIR" ]; then
    echo ".. Found PyRun directory at '$PYRUN_DIR' so will not re-download.  Delete this folder to re-download."
else
    # Download install-pyrun
    if [ -e "$INSTALL_PYRUN" ]; then
        echo ".. Found '$INSTALL_PYRUN' so will not re-download.  Delete this file to re-download."
    else
        echo ".. Downloading 'install-pyrun' script..."
        wget --retry-connrefused --read-timeout=20 --waitretry=1 -t 100 --continue -O $INSTALL_PYRUN $INSTALL_PYRUN_URL
        if [ $? -ne 0 ]; then
          echo ".. Abort!  Can't download 'install-pyrun' script."
          exit 1
        fi
        chmod +x $INSTALL_PYRUN
    fi

    # Download PyRun.
    echo ".. Downloading PyRun with Python 2.7..."
    $INSTALL_PYRUN --python=2.7 $PYRUN_DIR
    if [ $? -ne 0 ]; then
        echo ".. Abort!  Can't install minimal PyRun."
        exit 1
    fi
fi

# MUST: Override the PATH to add the path to the Pyrun binaries first so it's python executes instead of
# the system python.  When the script exits the old PATH values will be restored.
export PATH="$PYRUN_BIN:$PATH"


((STEP++))
echo "$STEP/$STEPS. Upgrading Pyrun's Pip..."

# MUST: Upgrade Pyrun's pip from v1.5.6 to prevent issues.
UPGRADE_PIP_CMD="$PYRUN_PIP install --upgrade pip"
$UPGRADE_PIP_CMD
if [ $? -ne 0 ]; then
    echo ".. Abort!  Error/s encountered running '$UPGRADE_PIP_CMD'."
    exit 1
fi


# MUST: Make sure we have a KALITE_PYTHON env var that points to Pyrun
# because for running Python commands.
export KALITE_PYTHON="$PYRUN"

cd "$KOLIBRI_DIR"
MAKE_CMD="make dist"
echo ".. Running $MAKE_CMD..."
$MAKE_CMD
if [ $? -ne 0 ]; then
    echo ".. Abort!  Error/s encountered running '$MAKE_CMD'."
    exit 1
fi


((STEP++))
echo "$STEP/$STEPS. Running 'setup.py install --static'..."

cd "$KOLIBRI_DIR"
SETUP_CMD="$PYRUN setup.py install"
SETUP_STATIC_CMD="$SETUP_CMD --static"
echo ".. Running $SETUP_STATIC_CMD..."
$SETUP_STATIC_CMD
if [ $? -ne 0 ]; then
    echo ".. Abort!  Error/s encountered running '$SETUP_STATIC_CMD'."
    exit 1
fi


# Build the Xcode project
((STEP++))
echo "$STEP/$STEPS. Building the Xcode project..."
KA_LITE_PROJECT_DIR="$SCRIPTPATH/KA-Lite"
if [ -d "$KA_LITE_PROJECT_DIR" ]; then
    # MUST: xcodebuild needs to be on the same directory as the .xcodeproj file
    cd "$KA_LITE_PROJECT_DIR"
    xcodebuild clean build
    if [ $? -ne 0 ]; then
        echo ".. Abort!  Running \"xcodebuild clean build\" failed!"
        exit 1
    fi
fi
# check if build of Xcode project succeeded
KA_LITE_APP_PATH="$KA_LITE_PROJECT_DIR/build/Release/KA-Lite.app"
if ! [ -d "$KA_LITE_APP_PATH" ]; then
    echo ".. Abort!  Build of '$KA_LITE_APP_PATH' failed!"
    exit 1
fi


# Check if to codesign or not
((STEP++))
echo "$STEP/$STEPS. Checking if to codesign the application or not..."
SIGNER_IDENTITY_APPLICATION="Developer ID Application: Foundation for Learning Equality, Inc. (H83B64B6AV)"
if [ -z ${IS_KOLIBRI_RELEASE+0} ]; then 
    echo ".. Not a release, don't codesign the application!"
else 
    echo ".. Release build so MUST codesign the application..."
    codesign -d -s "$SIGNER_IDENTITY_APPLICATION" --force "$KA_LITE_APP_PATH"
    if [ $? -ne 0 ]; then
        echo ".. Abort!  Error/s encountered codesigning '$KA_LITE_APP_PATH'."
        exit 1
    fi
fi


# Build the KA-Lite  installer using `Packages` to generate the .pkg file.
((STEP++))
cd "$WORKING_DIR/.."
OUTPUT_PATH="$WORKING_DIR/output"
echo "$STEP/$STEPS. Building the .pkg file at '$OUTPUT_PATH'..."
test ! -d "$OUTPUT_PATH" && mkdir "$OUTPUT_PATH"

KALITE_PACKAGES_NAME="KA-Lite.pkg"
PACKAGES_PROJECT="$SCRIPTPATH/KA-Lite-Packages/KA-Lite.pkgproj"
PACKAGES_OUTPUT="$SCRIPTPATH/KA-Lite-Packages/build/$KALITE_PACKAGES_NAME"

$PACKAGES_EXEC $PACKAGES_PROJECT
if [ $? -ne 0 ]; then
    echo ".. Abort!  Error building the .pkg file with '$PACKAGES_EXEC'."
    exit 1
fi

echo ".. Checking if to productsign the package or not..."
OUTPUT_PKG="$OUTPUT_PATH/$KALITE_PACKAGES_NAME"
SIGNER_IDENTITY_INSTALLER="Developer ID Installer: Foundation for Learning Equality, Inc. (H83B64B6AV)"
if [ -z ${IS_KOLIBRI_RELEASE+0} ]; then 
    echo ".. Not a release, don't productsign the package!"
    mv -v $PACKAGES_OUTPUT $OUTPUT_PATH
else 
    echo ".. Release build so MUST productsign the package..."
    productsign --sign "$SIGNER_IDENTITY_INSTALLER" "$PACKAGES_OUTPUT" "$OUTPUT_PKG"
    if [ $? -ne 0 ]; then
        echo ".. Abort!  Error/s encountered productsigning '$PACKAGES_OUTPUT'."
        exit 1
    fi
fi


echo "Congratulations! Your newly built installer is at '$OUTPUT_PKG'."
cd "$WORKING_DIR/.."
echo "Done!"
