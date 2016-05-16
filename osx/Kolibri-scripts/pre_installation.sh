#!/bin/bash
# 
# Arguments:
#   * $1 - Optional, used for the confirmation of the uninstall process.  Pass "yes" to auto-confirm the uninstall process, "no" will cancel the process.  If not passed, it will confirm the action with the user.
#   * $2 - Optional, used for the deletion of the KA Lite data folder.  Pass "yes" to auto-confirm, "no" will not delete it.  If not passed, it will confirm the action with the user.
#
# Notes: 
#   * This script must be run as root.  If ran as a standard user, it will prompt for the admin password.
#   * The files that will be removed will be displayed in the Console application.
#   * The $SCRIPT_NAME env variables was specified by the `Packages`.
#   * This is re-used as /Applications/Kolibri/KA_Lite_Uninstall.tool during installation.
#
# What does this script do?
#   1. Unset the environment variables: KOLIBRI_PYTHON and KOLIBRI_HOME.
#   2. Remove the .plist and preferences files, kolibri executable and the Kolibri resources.
#   3. When run stand-alone, it confirms removal of the Kolibri data directory as specified by the KOLIBRI_HOME env var.
#   4. Display a console log for this process.
#
# Some References:
#   * http://stackoverflow.com/a/2264537/845481 - Converting string to lower case in Bash shell scripting
#

#----------------------------------------------------------------------
# Global Variables
#----------------------------------------------------------------------
IS_PREINSTALL=false
if [ "$SCRIPT_NAME" == "preinstall" ]; then
    IS_PREINSTALL=true
fi

# TODO(cpauya): get version from `Kolibri/KOLIBRI/version.py`
VERSION="0.16"

kolibri_MONITOR="/Applications/Kolibri-Monitor.app"
KOLIBRI="kolibri"
ORG_LE="org.learningequality"
ORG_LE_KOLIBRI="$ORG_LE.kolibri"
KOLIBRI_PLIST="$ORG_LE_KOLIBRI.plist"
HOME_LAUNCH_AGENTS="$HOME/Library/LaunchAgents"
ROOT_LAUNCH_AGENTS="/Library/LaunchAgents"
KOLIBRI_EXECUTABLE_PATH="$(which $KOLIBRI)"
KOLIBRI_DIR="/Applications/Kolibri"
KOLIBRI_RESOURCES="$KOLIBRI_DIR/support"
KOLIBRI_USR_BIN_PATH="/usr/bin"
KOLIBRI_USR_LOCAL_BIN_PATH="/usr/local/bin"
KOLIBRI_UNINSTALL_SCRIPT="Kolibri_Uninstall.tool"

# remove the preferences files too
HOME_PREFERENCES="$HOME/Library/Preferences"
# prefs plist from v0.16
PREFS_PLIST="$HOME_PREFERENCES/$KOLIBRI_PLIST"
# old prefs plist from v0.14 to v0.15
OLD_PREFS_PLIST="$HOME_PREFERENCES/FLE.Kolibri-Monitor.plist"

REMOVE_FILES_ARRAY=()

#----------------------------------------------------------------------
# Functions
#----------------------------------------------------------------------
# @param [Integer] $1 exit code.
function key_exit() {
    echo "Press any key to exit."
    read
    exit $1
}


function append() {
    eval $1[\${#$1[*]}]=$2
}


# This function will check if the files or folders exists.
function check_files() {
    uninstall_count=0
    for file in "${REMOVE_FILES_ARRAY[@]}"; do
        if [ -e "${file}" ]; then
            ((uninstall_count++))
        fi
    done
    if [ $uninstall_count -eq 0 ]; then
        echo
        echo "Cannot find any Kolibri files or folders, nothing to uninstall here."
        return 1
    fi
    return 0
}


# This function will remove the files or folders.
function remove_files_initiator {

    uninstall_count=0
    for file in "${REMOVE_FILES_ARRAY[@]}"; do
        if [ -e "${file}" ]; then
            msg "Will remove: ${file}"
            ((uninstall_count++))
        fi
    done
    if [ $uninstall_count -eq 0 ]; then
        echo
        echo "Cannot find any Kolibri files or folders, nothing to uninstall here."
        exit
    fi

    # Collect the directories and files to remove
    if [ $IS_PREINSTALL == false ]; then
        # This script is not run by the Packages module.
        # Use AppleScript so we can use a graphical `sudo` prompt.
        # This way, people can enter the username they wish to use
        # for sudo, and it is more Apple-like.
        osascript -e "do shell script \"/bin/rm -Rf ${REMOVE_FILES_ARRAY[*]}\" with administrator privileges"
    else
        # This script is being run by the Packages module.
        sudo rm -Rf ${REMOVE_FILES_ARRAY[*]}
    fi
    # If process did not succeed, let's return non-zero.
    if [ $? -ne 0 ]; then
        msg "Uninstall process cancelled."
        exit 1
    fi
}


function msg() {
    echo "$1"
    syslog -s -l alert "Kolibri: $1"
}


#----------------------------------------------------------------------
# Script
#----------------------------------------------------------------------
# ENV=$(env)
# syslog -s -l alert "Packages pre-installation initialize with env:'\n'$ENV" 

# MUST: Check if KA Lite app is running before continuing to install.
if [ $IS_PREINSTALL == true ]; then
    # REF: http://stackoverflow.com/a/1821897/845481 
    # Check if Mac process is running using Bash by process name
    PROCESS="$KOLIBRI_DIR*"
    number=$(ps aux | grep "$PROCESS" | grep -v "grep" | wc -l)
    if [ $number -gt 0 ]; then
        msg "Installation cannot continue because KA Lite is running.  Please quit it first before installing."
        exit 1
    fi
fi

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null

# Collect the directories and files to remove
test -d $KOLIBRI_DIR                             && REMOVE_FILES_ARRAY+=("$KOLIBRI_DIR")
test -f $SCRIPTPATH/$KOLIBRI_UNINSTALL_SCRIPT    && REMOVE_FILES_ARRAY+=("$SCRIPTPATH/$KOLIBRI_UNINSTALL_SCRIPT")
test -d $KOLIBRI_RESOURCES                       && REMOVE_FILES_ARRAY+=("$KOLIBRI_RESOURCES")
test -f $KOLIBRI_USR_LOCAL_BIN_PATH/$KOLIBRI      && REMOVE_FILES_ARRAY+=("$KOLIBRI_USR_LOCAL_BIN_PATH/$KOLIBRI")
test -f $KOLIBRI_USR_BIN_PATH/$KOLIBRI            && REMOVE_FILES_ARRAY+=("$KOLIBRI_USR_BIN_PATH/$KOLIBRI")
test -d $KOLIBRI_MONITOR                         && REMOVE_FILES_ARRAY+=("$KOLIBRI_MONITOR")

for root_plist in $ROOT_LAUNCH_AGENTS/$ORG_LE.*.plist; do
    if [ -e $root_plist ]; then
        append REMOVE_FILES_ARRAY $root_plist
    fi
done

for home_plist in $HOME_LAUNCH_AGENTS/$ORG_LE.*.plist; do
    if [ -e $home_plist ]; then
        append REMOVE_FILES_ARRAY $home_plist
    fi
done

if [ -e $PREFS_PLIST ]; then
    append REMOVE_FILES_ARRAY $PREFS_PLIST
fi

if [ -e $OLD_PREFS_PLIST ]; then
    append REMOVE_FILES_ARRAY $OLD_PREFS_PLIST
fi

if [ $IS_PREINSTALL == false ]; then
    # Check that KOLIBRI_HOME env var exists, if not, assign it a default value.
    if [ -z ${KOLIBRI_HOME+0} ]; then 
      KOLIBRI_HOME="$HOME/.kolibri/"
    fi

    # Check if the directory exists before confirming to include it on the list.
    if [ -d "$KOLIBRI_HOME" ]; then
        echo "The KOLIBRI_HOME environment variable points to $KOLIBRI_HOME."
        echo "This is the directory where the data files are located."
        echo "Answer no if you want to keep your Kolibri data files."
        echo
        echo -n "Do you want the $KOLIBRI_HOME directory to be deleted? (Yes/No) "
        # Check if the second argument has a value. 
        remove_kolibri="$(echo $2 | tr '[:upper:]' '[:lower:]')"
        if [ "$remove_KOLIBRI" == "yes" ]; then
            msg "Auto confirm removing the $KOLIBRI_HOME directory."
        elif [ "$remove_kolibri" == "no" ]; then
            msg "NOT Removing $KOLIBRI_HOME directory."
        else
            read remove_kolibri
            # convert answer to lowercase
            remove_kolibri="$(echo $remove_kolibri | tr '[:upper:]' '[:lower:]')"
        fi
        if [ "$remove_kolibri" == "yes" ]; then
            append REMOVE_FILES_ARRAY "$KOLIBRI_HOME"
            echo "Will remove $KOLIBRI_HOME directory."
        else
            echo "NOT Removing $KOLIBRI_HOME directory."
        fi

    else
        msg "The $KOLIBRI_HOME directory does not exist, so there are no Kolibri data files to delete."
    fi

    # MUST: Check that the Kolibri app and the uninstall script exists inside the SCRIPTPATH
    # before adding the folder to the to-be-deleted list.  This will make sure we don't 
    # accidentally delete the folder containing this script.
    if [ -d "$SCRIPTPATH/Kolibri.app" ] && [ -f "$SCRIPTPATH/$KOLIBRI_UNINSTALL_SCRIPT" ]; then
        append REMOVE_FILES_ARRAY $SCRIPTPATH
    fi
fi

# Done getting files/folders to remove, check if we actually have files to remove.
check_files
if [ $? -ne 0 ]; then
    exit
fi

# Print the files and directories that well be removed and verify
# with the user.
echo
echo "The following files/directories will be removed:"
for file in "${REMOVE_FILES_ARRAY[@]}"; do
    echo "    $file"
done

echo
echo "And then the following environment variables will be unset:"
echo "  KOLIBRI_PYTHON with value $KOLIBRI_PYTHON"
echo "  KOLIBRI_HOME with value $KOLIBRI_HOME"

if [ $IS_PREINSTALL == false ]; then
    echo "         "
    echo -n "Do you wish to uninstall Kolibri? (Yes/No) "
    # Check if the first argument has a value. 
    uninstall="$(echo "$1" | tr '[:upper:]' '[:lower:]')"
    if [ "$uninstall" == "yes" ]; then
        msg "Auto confirm uninstallation process."
    elif [ "$uninstall" == "no" ]; then
        msg "NOT proceeding with the uninstall process."
    else
        read uninstall
        # convert answer to lowercase
        uninstall="$(echo $uninstall | tr '[:upper:]' '[:lower:]')"
    fi
    if [ "$uninstall" != "yes" ]; then
        echo "Aborting uninstall. (answer: ${uninstall})"
        key_exit 1
    fi
fi

echo "Removing files..."
# This function will prompt for the admin password which is the 
# last chance to cancel the uninstall process.
remove_files_initiator
if [ $? -ne 0 ]; then
    msg "Uninstall process cancelled."
    exit 1
fi

msg "Unsetting the KOLIBRI_PYTHON environment variable..."
unset KOLIBRI_PYTHON
launchctl unsetenv KOLIBRI_PYTHON

msg "Unsetting the KOLIBRI_HOME environment variable..."
unset KOLIBRI_HOME
launchctl unsetenv KOLIBRI_HOME

msg "Done! KA Lite is now uninstalled."
