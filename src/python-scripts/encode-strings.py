"""
    This script must be ran at python2.7+ only.
    This will encode translated po file strings from crowdin into inno setup .isl file.
    Sample command to run this script:
        $ python2.7 ./extract-isl-string.py  /xxx/xxx.isl /xxxx/kolibri-installer.po
    It will generate /xxx.isl at the path of this script.
    When running this script, it will ask for the language name, language id and language code page.
    Here's the reference to get the language id and language code page for the specified language.
    Languageid:
        https://msdn.microsoft.com/en-us/library/dd318693.aspx
    LanguageCodePage:
        https://msdn.microsoft.com/en-us/library/cc195052.aspx

    Here's the samples of LanguageID and LanguageCodePage value in English language:
        LanguageName=English
        LanguageID=$0409
        LanguageCodePage=0
"""

from __future__ import print_function, unicode_literals

import io
import os
import shutil
import sys

import polib

ARG_ISL_FILE_PATH = os.path.abspath(sys.argv[1:][0])
ARG_PO_FILE_PATH = os.path.abspath(sys.argv[1:][1])

print("ISL", ARG_ISL_FILE_PATH)
print("PO", ARG_PO_FILE_PATH)


def verify_args():
    if not os.path.exists(ARG_ISL_FILE_PATH):
        print("The path " + ARG_ISL_FILE_PATH + " does not exist")
        return False
    elif not ARG_ISL_FILE_PATH.endswith(".isl"):
        print("This file " + ARG_ISL_FILE_PATH + " is not an .isl file")
        return False
    else:
        if not os.path.exists(ARG_PO_FILE_PATH):
            print("The path " + ARG_PO_FILE_PATH + " does not exist")
            return False
        elif not ARG_PO_FILE_PATH.endswith(".po"):
            print("This file " + ARG_PO_FILE_PATH + " is not an .po file")
            return False
        else:
            return True


# certain lines are not translations
def is_translation(line):
    if "=" not in line:
        return False
    lang_info_items = [
        "LanguageName",
        "LanguageID",
        "LanguageCodePage",
        "CommunityLink",
    ]
    for item in lang_info_items:
        if line.startswith(item):
            return False
    return True


def encode_trans_str():
    """
    Replaces each existing translation in the ISL file with one in the PO file
    """

    po = polib.pofile(ARG_PO_FILE_PATH)
    new_lines = []

    with io.open(ARG_ISL_FILE_PATH, mode="r", encoding="utf-8") as isl_file:
        for isl_line in isl_file:
            if is_translation(isl_line):
                split = isl_line.split("=")
                key = split[0].rstrip()
                string = split[1].rstrip()
                in_po = False
                for entry in po:
                    if string == entry.msgid:
                        new_lines.append("{}={}".format(key, entry.msgstr))
                        in_po = True
                        continue
                if not in_po:
                    new_lines.append(isl_line)
                in_po = False
            else:
                new_lines.append(isl_line)
    with io.open(ARG_ISL_FILE_PATH, mode="w", encoding="utf-8") as output:
        for line in new_lines:
            output.write(line)


def main():
    if verify_args():
        encode_trans_str()


if __name__ == "__main__":
    main()
