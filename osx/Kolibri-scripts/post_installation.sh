#!/usr/bin/env bash

# Post installation script of Kolibri to be used in Packages.

# Notes: 
# 1. This script must be run as root.
# 2. We use `/Applications/Kolibri/support/` as the installation location which contains the `content/contentpacks/en.zip`, `pyrun`, and `scripts`.

# Steps
# 1. Symlink Kolibri executable to /usr/local/bin.
# 2. Set KOLIBRI_PYTHON environment variable to the Pyrun executable.
# 3. Create plist in /Library/LaunchAgents/ folder.
# 4. Run shebangcheck script that checks the python/pyrun interpreter to use.
# 5. Remove the old asset folder to be replaced by newer assets later.
# 6. Run Kolibri manage syncdb --noinput.
# 7. Run Kolibri manage setup --noinput.
# 8. Run Kolibri manage collectstatic --noinput.
# 9. Run Kolibri manage retrievecontentpack local en path-to-en.zip.
# 10. Change the owner of the ~/.Kolibri/ folder and .plist file to current user.
# 11. Set the KOLIBRI_PYTHON env var for the user doing the install so we don't need to restart after installation.
# 12. Create a copy of Kolibri-uninstall.sh and name it as Kolibri_Uninstall.tool.


#----------------------------------------------------------------------
# Global Variables
#----------------------------------------------------------------------
SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

STEP=0
STEPS=11

KOLIBRI_SHARED="/Applications/Kolibri/support"
KOLIBRI_DIR="$HOME/.kolibri"
KOLIBRI_UNINSTALL_SCRIPT="Kolibri_Uninstall.tool"
PYRUN_NAME="pyrun-2.7"
PYRUN_DIR="$KOLIBRI_SHARED/$PYRUN_NAME"
PYRUN="$PYRUN_DIR/bin/pyrun"
PYRUN_PIP="$PYRUN_DIR/bin/pip"
BIN_PATH="$PYRUN_DIR/bin"
SCRIPT_PATH="$KOLIBRI_SHARED/scripts"
APPLICATION_PATH="/Applications/Kolibri"
PRE_INSTALL_SCRIPT="$SCRIPT_PATH/kolibri-uninstall.sh"

SYMLINK_FILE="$KOLIBRI_SHARED/pyrun-2.7/bin/kolibri"
SYMLINK_TO="/usr/local/bin"
COMMAND_SYMLINK="ln -sf $SYMLINK_FILE $SYMLINK_TO"

ORG="org.learningequality.kolibri"
LAUNCH_AGENTS="/Library/LaunchAgents/"
KOLIBRI=$(which kolibri)
PLIST_SRC="$LAUNCH_AGENTS$ORG.plist"


#----------------------------------------------------------------------
# Functions
#----------------------------------------------------------------------
function update_env {
    # MUST: Make sure we have a KOLIBRI_PYTHON env var that points to Pyrun
    msg "Setting KOLIBRI_PYTHON environment variable to $PYRUN..."
    launchctl unsetenv KOLIBRI_PYTHON
    launchctl setenv KOLIBRI_PYTHON "$PYRUN"
    export KOLIBRI_PYTHON="$PYRUN"
    if [ $? -ne 0 ]; then
        msg ".. Abort!  Error/s encountered exporting KOLIBRI_PYTHON '$PYRUN'."
        exit 1
    fi
}


function create_plist {

    if [ -f "$PLIST_SRC" ]; then
        msg ".. Now removing '$PLIST_SRC'..."
        rm -fr $PLIST_SRC
        if [ $? -ne 0 ]; then
            msg ".. Abort!  Error/s encountered removing '$PLIST_SRC'."
            exit 1
        fi
    fi

    # Create Plist 
    msg "Now creating '$PLIST_SRC'..."
    echo "<?xml version='1.0' encoding='UTF-8'?>" >> $PLIST_SRC
    echo "<!DOCTYPE plist PUBLIC '-//Apple//DTD PLIST 1.0//EN' 'http://www.apple.com/DTDs/PropertyList-1.0.dtd'>" >> $PLIST_SRC
    echo "<plist version='1.0'>" >> $PLIST_SRC
    echo "<dict>" >> $PLIST_SRC
    echo -e "\t<key>Label</key>" >> $PLIST_SRC
    echo -e "\t<string>org.learningequality.kolibri</string>" >> $PLIST_SRC
    echo -e "\t<key>ProgramArguments</key>" >> $PLIST_SRC
    echo -e "\t<array>" >> $PLIST_SRC
    echo -e "\t\t<string>sh</string>" >> $PLIST_SRC
    echo -e "\t\t<string>-c</string>" >> $PLIST_SRC
    echo -e "\t\t<string>launchctl setenv KOLIBRI_PYTHON \"$PYRUN\"</string>" >> $PLIST_SRC
    echo -e "\t</array>" >> $PLIST_SRC
    echo -e "\t<key>RunAtLoad</key>" >> $PLIST_SRC
    echo -e "\t<true/>" >> $PLIST_SRC
    echo "</dict>" >> $PLIST_SRC
    echo "</plist>" >> $PLIST_SRC

    if [ -f "$PLIST_SRC" ]; then
        msg ".. $PLIST_SRC created successfully"
    else
        if [ $? -ne 0 ]; then
            msg ".. Abort!  Error/s encountered creating '$PLIST_SRC'."
            exit 1
        fi
    fi
}

# Print message in terminal and log for the Console application.
function msg() {
    echo "$1"
    syslog -s -l alert "Kolibri: $1"
}


#----------------------------------------------------------------------
# Script
#----------------------------------------------------------------------

msg "Post-installation: Preparing Kolibri dependencies..."

ENV=$(env)
msg ".. Packages post-installation env:'\n'$ENV" 


((STEP++))
msg "$STEP/$STEPS. Symlink kolibri executable to $SYMLINK_TO..."
if [ ! -d "$SYMLINK_TO" ]; then
    msg ".. Now creating '$SYMLINK_TO'..."
    sudo mkdir -p $SYMLINK_TO
    if [ $? -ne 0 ]; then
        msg ".. Abort!  Error encountered creating '$SYMLINK_TO' directory."
        exit 1
    fi
fi

$COMMAND_SYMLINK
if [ $? -ne 0 ]; then
    msg ".. Abort!  Error encountered running '$COMMAND_SYMLINK'."
    exit 1
fi


((STEP++))
msg "$STEP/$STEPS. Set KOLIBRI_PYTHON environment variable to the Pyrun executable..."
update_env


((STEP++))
msg "$STEP/$STEPS. Creating and loading plist in $LAUNCH_AGENTS folder..."
if [ ! -d "$LAUNCH_AGENTS" ]; then
    # It's unlikely that the directory does not exist but nevertheless let's leave it here.
    msg ".. Must create '$LAUNCH_AGENTS' folder..."
    sudo mkdir -p $LAUNCH_AGENTS
    if [ $? -ne 0 ]; then
        msg ".. Abort!  Error encountered creating '$LAUNCH_AGENTS' directory."
        exit 1
    fi
fi
create_plist


((STEP++))
# TODO(arceduardvincent): Remove this step when the issue is solved.
# Remove the old asset folder to be replaced by newer assets later.
# REF: https://github.com/learningequality/installers/issues/337#issuecomment-171127297

# Use the KOLIBRI_HOME env var if it exists or use the default value.
KOLIBRI_HOME_DEFAULT="$HOME/.koli/"
if [ -z ${KOLIBRI_HOME+0} ]; then
    KOLIBRI_HOME=$KOLIBRI_HOME_DEFAULT
else
    # If path of $KOLIBRI_HOME does not exist, use the default location
    if [ ! -d "$KOLIBRI_HOME" ]; then
        KOLIBRI_HOME=$KOLIBRI_HOME_DEFAULT
    fi
fi

KOLIBRI_ASSET_FOLDER="$KOLIBRI_HOME/httpsrv/"
msg "$STEP/$STEPS. Removing the old asset folder at '$KOLIBRI_ASSET_FOLDER' to be replaced later..."
if [ -d "$KOLIBRI_ASSET_FOLDER" ]; then
    rm -Rf "$KOLIBRI_ASSET_FOLDER"
    if [ $? -ne 0 ]; then
        msg ".. Abort!  Error removing the $KOLIBRI_ASSET_FOLDER."
        exit 1
    fi
fi


((STEP++))
msg "$STEP/$STEPS. Running kolibri manage syncdb --noinput..."
$BIN_PATH/kolibri manage syncdb --noinput


((STEP++))
msg "$STEP/$STEPS. Running kolibri manage setup --noinput..."
$BIN_PATH/kolibri manage setup --noinput


((STEP++))
msg "$STEP/$STEPS. Running kolibri manage collectstatic --noinput..."
$BIN_PATH/kolibri manage collectstatic --noinput


# Use `kolibri manage retrievecontentpack local en path-to-en.zip`.
((STEP++))
msg "$STEP/$STEPS. Running $BIN_PATH/kolibri manage retrievecontentpack local en $CONTENTPACK_ZIP..."
CONTENTPACK_ZIP="$KOLIBRI_SHARED/content/contentpacks/en.zip"
$BIN_PATH/kolibri manage retrievecontentpack local en $CONTENTPACK_ZIP


((STEP++))
# Change the owner of the ~/.kolibri/ folder.
msg "$STEP/$STEPS. Changing the owner of the '$KOLIBRI_DIR' and '$PLIST_SRC' to the current user $USER..."
chown -R $USER:$SUDO_GID $KOLIBRI_DIR
chown -R $USER:$SUDO_GID $PLIST_SRC


((STEP++))
# Set the KOLIBRI_PYTHON env var for the user doing the install so we don't need to restart after installation.
msg "$STEP/$STEPS. Set the KOLIBRI_PYTHON env var for the user doing the install so we don't need to restart after installation..."
# MUST: Do an unsetenv first because the env var may already be set.  This is useful during upgrade.
su $USER -c "launchctl unsetenv KOLIBRI_PYTHON"
su $USER -c "launchctl setenv KOLIBRI_PYTHON $PYRUN"
if [ $? -ne 0 ]; then
    msg ".. Abort!  Error setting the KOLIBRI_PYTHON env var under the user account."
    exit 1
fi
msg "KOLIBRI_PYTHON env var is now set to $KOLIBRI_PYTHON"


# ((STEP++))
# # Create a copy of kolibri-uninstall.sh and name it as Kolibri_Uninstall.tool.
# msg "$STEP/$STEPS. Creating a $KOLIBRI_UNINSTALL_SCRIPT..."
# cp -R "$PRE_INSTALL_SCRIPT" "$APPLICATION_PATH/$KOLIBRI_UNINSTALL_SCRIPT"
# if [ $? -ne 0 ]; then
#     msg ".. Abort!  Error creating a $KOLIBRI_UNINSTALL_SCRIPT."
#     exit 1
# fi

msg "Done with post installation!"

KOLIBRI_APP="$APPLICATION_PATH/Kolibri.app"
if [ -d "$KOLIBRI_APP" ]; then
    msg "Will open '$KOLIBRI_APP' now."
    open "$KOLIBRI_APP"
    msg "$KOLIBRI_APP opened successfully."
else
    msg "Cannot auto-open $KOLIBRI_APP."
fi
