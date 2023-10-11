import errno
import os
import polib
import pathlib    
import sys
import shutil

from urllib.request import urlopen
from zipfile import ZipFile

# List of languages that will be created as isl file
# LanguageID is used in the installer to get the user default Windows UI language. Id's for each languages 
    # can be found in the downloadable PDF here https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-lcid/70feba9f-294e-491e-b6eb-56532684c37f
LANG_OBJ_LIST = [{'Bengali': [{'LanguageName': 'Bengali', 'LanguageID': '$0445', 'LanguageCodePage': '0'}]}, \
    {'Burmese': [{'LanguageName': 'Burmese', 'LanguageID': '$0055', 'LanguageCodePage': '0'}]}, \
    {'Chewa': [{'LanguageName': 'Chewa', 'LanguageID': '$1000', 'LanguageCodePage': '0'}]}, \
    {'Spanish': [{'LanguageName': 'Spanish', 'LanguageID': '$0c0a', 'LanguageCodePage': '1252'}]}, \
    {'Marathi': [{'LanguageName': 'Marathi', 'LanguageID': '$044E', 'LanguageCodePage': '0'}]}, \
    {'Italian': [{'LanguageName': 'Italian', 'LanguageID': '$0410', 'LanguageCodePage': '1252'}]}, \
    {'Telugu': [{'LanguageName': 'Telugu', 'LanguageID': '$044A', 'LanguageCodePage': '0'}]}, \
    {'Korean': [{'LanguageName': 'Korean', 'LanguageID': '$0412', 'LanguageCodePage': '949'}]}, \
    {'Arabic': [{'LanguageName': 'Arabic', 'LanguageID': '$0401', 'LanguageCodePage': '0'}]}, \
    {'German': [{'LanguageName': 'German', 'LanguageID': '$0407', 'LanguageCodePage': '1252'}]}, \
    {'Bulgarian': [{'LanguageName': 'Bulgarian', 'LanguageID': '$0402', 'LanguageCodePage': '1251'}]}, \
    {'Yoruba': [{'LanguageName': 'Yoruba', 'LanguageID': '$046A', 'LanguageCodePage': '0'}]}, \
    {'Persian': [{'LanguageName': 'Persian', 'LanguageID': '$0429', 'LanguageCodePage': '0'}]}, \
    {'Spanish, Latin America': [{'LanguageName': 'Spanish, Latin America', 'LanguageID': '$580A', 'LanguageCodePage': '0'}]}, \
    {'Portuguese, Brazilian': [{'LanguageName': 'Portuguese, Brazilian', 'LanguageID': '$0416', 'LanguageCodePage': '0'}]}, \
    {'Vietnamese': [{'LanguageName': 'Vietnamese', 'LanguageID': '$042A', 'LanguageCodePage': '0'}]}, \
    {'Urdu (Pakistan)': [{'LanguageName': 'Urdu (Pakistan)', 'LanguageID': '$0420', 'LanguageCodePage': '0'}]}, \
    {'Hindi': [{'LanguageName': 'Hindi', 'LanguageID': '$0439', 'LanguageCodePage': '0'}]}, \
    {'Swahili, Tanzania': [{'LanguageName': 'Swahili, Tanzania', 'LanguageID': '$0441', 'LanguageCodePage': '0'}]}, \
    {'Chinese Simplified': [{'LanguageName': 'Chinese Simplified', 'LanguageID': '$0804', 'LanguageCodePage': '0'}]}, \
    {'Khmer': [{'LanguageName': 'Khmer', 'LanguageID': '$0053', 'LanguageCodePage': '0'}]}, \
    {'French': [{'LanguageName': 'French', 'LanguageID': '$040C', 'LanguageCodePage': '1252'}]}, \
    {'Fulfulde Mbororoore': [{'LanguageName': 'Fulfulde Mbororoore', 'LanguageID': '0', 'LanguageCodePage': '0'}]}, \
    {'Gujarati': [{'LanguageName': 'Gujarati', 'LanguageID': '$0447', 'LanguageCodePage': '0'}]}, \
    {'Turkish': [{'LanguageName': 'Turkish', 'LanguageID': '$041F', 'LanguageCodePage': '0'}]}, \
    {'Tagalog': [{'LanguageName': 'Tagalog', 'LanguageID': '0', 'LanguageCodePage': '0'}]}, \
    {'Nepali': [{'LanguageName': 'Nepali', 'LanguageID': '$0461', 'LanguageCodePage': '0'}]}, \
    {'Georgian': [{'LanguageName': 'Georgian', 'LanguageID': '$0437', 'LanguageCodePage': '0'}]}]    

# Kolibri Windows installer Crowdin download zip url 
INSTALLER_ZIP_URL = "https://crowdin.com/backend/download/project/kolibri-windows-app.zip"
SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))
SRC_PATH = os.path.dirname(SCRIPT_PATH)

# Location for the Crowdin translation
FOLDER_PATH = "{0}{1}".format(SRC_PATH, "/python-scripts/crowdin-translation")

# Use this as template for the new isl file created with this script.
ISL_TEMPLATE = os.path.join(SRC_PATH, "inno-compiler/Default.isl")

# Update this with Crowdin release version
RELEASE_VER = "v1.4.0"


# REF: https://stackoverflow.com/a/35262209
def make_sure_path_exists(path):
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST or not os.path.isdir(path):
            raise


def encode_trans_str(inno, custom, language_code, new_txt_entry):    
    custom_po = polib.pofile(custom)
    inno_po = polib.pofile(inno)
    percent = custom_po.percent_translated()
    percent_inno = inno_po.percent_translated()
    inno_lang_name = inno_po.metadata['Language-Team']
    custom_lang_name = custom_po.metadata['Language-Team']

    new_isl_name = inno_lang_name.replace(" ", "_").replace(",", "")
    new_isl_file = "{0}/innosetup-translation/{1}{2}".format(SCRIPT_PATH, new_isl_name, ".isl")
    make_sure_path_exists("{0}{1}".format(SRC_PATH, "/python-scripts/innosetup-translation"))
    print("{0} isl file created at this path: {1}".format(new_isl_name, new_isl_file))
    ARG_PO_FILE_PATH = inno
    # REF: https://stackoverflow.com/a/42541913
    shutil.copy(ISL_TEMPLATE, new_isl_file)
    file = open(new_isl_file, 'w')
    file.write('')
    file.close()

    open_new_isl_file = open(new_isl_file, 'w')
    isl_file_path_open = open(ISL_TEMPLATE)
    current_lang_obj = {}
    for lang_obj in LANG_OBJ_LIST:
        lang_name_obj = list(lang_obj.keys())[0]
        if custom_lang_name and inno_lang_name == lang_name_obj:
            
            current_lang_obj = lang_obj
    if current_lang_obj == {}:
        print("lang not in obj {}".format(custom_lang_name))

    line_num = 0
    for isl_line in isl_file_path_open:
        
        split_one = isl_line.split('=')[0].rstrip()
        line_language_name = '%s=%s \n' % (split_one, language_code)
        line_language_id = '%s=%s \n' % (split_one, language_code)
        line_language_code_page = '%s=%s \n' % (split_one, language_code)
        if not current_lang_obj == {}:
            for i in current_lang_obj.values():
                for i in i:
                    line_language_name = '%s=%s \n' % (split_one, i["LanguageName"])
                    line_language_id = '%s=%s \n' % (split_one, i["LanguageID"])
                    line_language_code_page = '%s=%s \n' % (split_one, i["LanguageCodePage"])
        in_po = False
        try:
            split_two = isl_line.split('=')[1].rstrip()
            if split_one == "LanguageName":
                open_new_isl_file.write(line_language_name)
                in_po = True  
            elif split_one == "LanguageID":
                open_new_isl_file.write(line_language_id)
                in_po = True  
            elif split_one == "LanguageCodePage":
                open_new_isl_file.write(line_language_code_page)
                in_po = True  
            else:
                for entry in inno_po:
                    if split_two == entry.msgid:
                        f_line = '%s=%s \n' % (split_one, entry.msgstr)
                        if entry.msgstr:
                            open_new_isl_file.write(f_line)
                            in_po = True         
                for entry in custom_po:
                    if split_two == entry.msgid:
                        f_line = '%s=%s \n' % (split_one, entry.msgstr)
                        if entry.msgstr:
                            open_new_isl_file.write(f_line)
                            in_po = True       
        except:
            pass

        str_line = "{}".format(isl_line)
        if not in_po:
            open_new_isl_file.write(isl_line)        
        line_num += 1
    inno_entry = 'Name: "{0}"; MessagesFile: "compiler:Languages\{1}.isl" \n'.format(language_code.replace("-", "_"), new_isl_name)
    new_txt_entry.write(inno_entry)


# Return list of directories in the path.
def get_list_dir():
    path = pathlib.Path(FOLDER_PATH)
    dir_list = []
    try:
        for item in path.iterdir():
            if item.is_dir():
                dir_list.append(item)
        return dir_list
    except FileNotFoundError:
        print('Invalid directory')
    return


# Download and extract translation files from the Crowdin.
def download_translation_file():
    make_sure_path_exists(FOLDER_PATH)
    try:
        url_resp = urlopen(INSTALLER_ZIP_URL)
        temp_zip = open("/tmp/temp.zip", "wb")
        temp_zip.write(url_resp.read())
        temp_zip.close()
        file_zip = ZipFile("/tmp/temp.zip")
        file_zip.extractall(path = "./crowdin-translation")
        file_zip.close()
        return True
    except Exception as e:
        print("Error failed to download translation file ", e)
        return False


# Encode po files into isl file format. 
def encode_into_isl():
    if not download_translation_file():
        return 
    lang_list = get_list_dir()
    counter = 0
    new_entry_txt = os.path.join(SRC_PATH, "python-scripts/inno_entry.txt")
    text_file = open(new_entry_txt, 'w')

    for lang_dir in lang_list:
        counter += 1
        custom_po = "innosetup-customized.po"
        inno_po = "innosetup.po"
        custom_path = os.path.join(lang_dir, RELEASE_VER, custom_po)
        inno_path = os.path.join(lang_dir, RELEASE_VER, inno_po)
        lang_code = str(lang_dir).split("/")[-1]        
        encode_trans_str(str(inno_path), str(custom_path),lang_code, text_file)


def main():
    encode_into_isl()


if __name__=="__main__":
    main()  