"""
  This script is use to extract InnoSetup translated strings to po file format
  Use Python 3 to run this script
  To run this script pass the isl url as an agument
  Sample command: python3 ./extract-translated.py https://raw.github.com/jrsoftware/issrc/master/Files/Languages/Armenian.isl
  The output po file will be added at python-scripts directory
  All the InnoSetup translated strings can be found here https://jrsoftware.org/files/istrans/
"""

import os
import sys
import json
from urllib.request import urlopen


# List of selected IDs from the InnoSetup isl file
ID_LIST = ['LanguageName', 'SetupAppTitle', 'SetupWindowTitle', 'UninstallAppTitle', \
    'UninstallAppFullTitle', 'InformationTitle', 'ConfirmTitle', 'ErrorTitle', \
    'SetupLdrStartupMessage', 'SetupAlreadyRunning', 'WindowsVersionNotSupported', \
    'ExitSetupMessage', 'ButtonBack', 'ButtonNext', 'ButtonInstall', 'ButtonOK', 'ButtonCancel', \
    'ButtonYes', 'ButtonYesToAll', 'ButtonNo', 'ButtonNoToAll', 'ButtonFinish', 'ButtonBrowse', \
    'ButtonWizardBrowse', 'ButtonNewFolder', 'SelectLanguageTitle', 'SelectLanguageLabel', \
    'ClickNext', 'BrowseDialogTitle', 'BrowseDialogLabel', 'NewFolderName', 'WelcomeLabel1', \
    'WelcomeLabel2', 'WizardInfoBefore', 'WizardInfoAfter', 'WizardSelectDir', 'SelectDirDesc', \
    'SelectDirLabel3', 'SelectDirBrowseLabel', 'DiskSpaceMBLabel', 'DiskSpaceWarningTitle', \
    'WizardSelectProgramGroup', 'SelectStartMenuFolderDesc', 'SelectStartMenuFolderLabel3', \
    'SelectStartMenuFolderBrowseLabel', 'MustEnterGroupName', 'BadGroupName', 'WizardReady', \
    'ReadyLabel1', 'ReadyLabel2a', 'ReadyLabel2b', 'ReadyMemoDir', 'ReadyMemoGroup', \
    'WizardPreparing', 'PreparingDesc', 'CannotContinue', 'WizardInstalling', 'InstallingLabel', \
    'FinishedHeadingLabel', 'FinishedLabelNoIcons', 'FinishedLabel', 'ClickFinish', \
    'AbortRetryIgnoreCancel', 'StatusExtractFiles', 'StatusRunProgram', 'ConfirmUninstall', \
    'UninstallStatusLabel', 'UninstalledAll', 'UninstalledMost', 'CreateDesktopIcon', \
    'ProgramOnTheWeb', 'UninstallProgram', 'LaunchProgram']


ROOT_DIR_PATH = os.getcwd()
TEMPLATE_NAME = 'en-template.json'
TEMPLATE_PATH = os.path.join(ROOT_DIR_PATH, TEMPLATE_NAME)

PO_FILE_HEADER_LIST = [
    'msgid "" \n',
    'msgstr "" \n',
    '"Project-Id-Version: \\n"\n',
    '"Last-Translator: \\n"\n',
    '"Language-Team: \\n"\n',
    '"Language: en\\n"\n',
    '"MIME-Version: 1.0\\n"\n',
    '"Content-Type: text/plain; charset=UTF-8\\n"\n',
    '"Content-Transfer-Encoding: 8bit\\n"\n',
    '"Plural-Forms: nplurals=2; plural=(n != 1);\\n"\n',
    '\n',
]

ARG_ISL_URL = sys.argv[1:][0]


def create_po_file(po_name):
    try:
        file = open(po_name, 'w+')
        file.close()
        return True
    except Exception:
        print("Failed to create kolibri-installer.po")
        return False


def encode_trans_str(): 
    isl_name = ARG_ISL_URL.split("/").pop()
    isl_get = urlopen(ARG_ISL_URL)
    isl_data = isl_get.read().decode('iso8859-1').split('\n')

    po_name = isl_name.split(".")[0] + '.po'
    if create_po_file(po_name):
        # print(isl_file_path_open)
        po_file_path = os.getcwd() + "/" + isl_name
        with open(po_name, 'w') as po_file:
            for line_str in PO_FILE_HEADER_LIST:
                po_file.write(line_str)
            line_num = 0
            for isl_line in isl_data:
                line_num += 1
                try:
                    isl_id = isl_line.split('=')[0].rstrip()
                    isl_val = isl_line.split('=')[1].rstrip()
                    if isl_id in ID_LIST:
                        with open(TEMPLATE_PATH) as json_file:
                            data = json.load(json_file)
                            for p in data:
                                data_val = list(p.values())[0]
                                data_key = list(p.keys())[0]
                                if isl_id == data_key:
                                    isl_string_line  = 'msgid "%s" \n' % (data_val)
                                    isl_line_num = '#: %s.isl %s \n' % (str(isl_name), str(line_num))

                                    po_file.write(isl_line_num)
                                    po_file.write(isl_string_line)
                                    po_file.write('msgstr "%s" \n' % (isl_val))
                            po_file.write('\n')
                except Exception as err:
                    print(err)


def main():
    encode_trans_str()


if __name__=="__main__":
    main()