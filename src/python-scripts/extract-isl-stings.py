"""
    This script must be ran at python2.7+ only.
    This script will extract translatable strings from inno setup isl file into gettext po file.
    A sample command to run this script:
        $ python extract-isl-string.py /xxx/xxx.isl 
    It will create a file /kolibri-installer.po at the path of this script.
"""

import sys
import os

PO_FILE_NAME = "kolibri-installer.po"
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

def create_po_file():
    try:
        file = open(PO_FILE_NAME, 'a')
        file.close()
        return True
    except Exception:
        print "Failed to create kolibri-installer.po"
        return False

def extract_strings_from_isl():
    if create_po_file():
        po_file_path = os.getcwd() + "/" + PO_FILE_NAME
        isl_file_path = sys.argv[1:][0]
        if os.path.exists(isl_file_path):
            isl_file_path_open = open(isl_file_path)
            with open(po_file_path, 'w') as po_file:

                for line_str in PO_FILE_HEADER_LIST:
                    po_file.write(line_str)

                line_num = 0
                msgid_list = []
                for isl_line in isl_file_path_open:
                    line_num += 1

                    try:
                        string_line = isl_line.split('=')[1].rstrip()
                        # Filter duplicate msgid.
                        if string_line not in msgid_list:
                            msgid_list.append(string_line)

                            counter = 0
                            # Remove characters that are not allowed in the po file.
                            for i in range(0, len(string_line)):
                                if string_line[i]=='"' or string_line[i]=='\\':
                                    if counter == 0:
                                        # Add an edited comment when msgid was modified.
                                        string_line = string_line.replace('"', ' ').replace('\\', ' ')
                                        po_file.write('#: edited \n')
                                        counter += 1
                                        break
                            isl_string_line  = 'msgid "%s" \n' % (string_line)
                            isl_line_num = '#: Default.isl:%s \n' % (str(line_num))
                            if string_line:
                                po_file.write(isl_line_num)
                                po_file.write(isl_string_line)
                                po_file.write('msgstr "" \n')
                                po_file.write('\n')
                            counter = 0
                    except Exception:
                        pass
            po_file.close()
            isl_file_path_open.close()
        else:
            print "The inno setup isl file does not exit on this path %s " % (isl_file_path)


def main():
    extract_strings_from_isl()

if __name__ == "__main__":
    main()
