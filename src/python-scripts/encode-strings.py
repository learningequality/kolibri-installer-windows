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

import os
import polib	
import sys
import shutil

ARG_ISL_FILE_PATH = sys.argv[1:][0]
ARG_PO_FILE_PATH = sys.argv[1:][1]

def verify_args():
	if not os.path.exists(ARG_ISL_FILE_PATH):
		print "The path " + ARG_ISL_FILE_PATH + " does not exist"
		return False
	elif not ARG_ISL_FILE_PATH.endswith('.isl'):
		print "This file " + ARG_ISL_FILE_PATH + " is not an .isl file"
		return False
	else:
		if not os.path.exists(ARG_PO_FILE_PATH):
			print "The path " + ARG_PO_FILE_PATH + " does not exist"
			return False
		elif not ARG_PO_FILE_PATH.endswith('.po'):
			print "This file " + ARG_PO_FILE_PATH + " is not an .po file"
			return False
		else:
			return True

def encode_trans_str():	

	if verify_args():
		language_name = raw_input('Enter LanguageName: ')
		language_id = raw_input('Enter LanguageID: ')
		language_code_page = raw_input('Enter LanguageCodePage: ')

		script_path = os.path.dirname(os.path.realpath(__file__))
		new_isl_file = '%s/%s' % (script_path, language_name+'.isl')

		# REF: https://stackoverflow.com/a/42541913
		shutil.copy(ARG_ISL_FILE_PATH, new_isl_file)
		file = open(new_isl_file, 'w')
		file.write('')
		file.close()

		open_new_isl_file = open(new_isl_file, 'w')
		isl_file_path_open = open(ARG_ISL_FILE_PATH)
		po = polib.pofile(ARG_PO_FILE_PATH)
		line_num = 0
		for isl_line in isl_file_path_open:

			try:
				split_one = isl_line.split('=')[0].rstrip()
				split_two = isl_line.split('=')[1].rstrip()

				line_language_name = '%s=%s \n' % (split_one, language_name)
				line_language_id = '%s=%s \n' % (split_one, language_id)
				line_language_code_page = '%s=%s \n' % (split_one, language_code_page)

				if split_one == "LanguageName":
					open_new_isl_file.write(line_language_name.encode('utf8'))
				elif split_one == "LanguageID":
					open_new_isl_file.write(line_language_id.encode('utf8'))
				elif split_one == "LanguageCodePage":
					open_new_isl_file.write(line_language_code_page.encode('utf8'))
				else:
					in_po = False
					for entry in po:
						if split_two == entry.msgid:
							 f_line = '%s=%s \n' % (split_one, entry.msgstr)
							 open_new_isl_file.write(f_line.encode('utf8'))
							 in_po = True
					if not in_po:
						open_new_isl_file.write(isl_line.encode('utf8'))		 
					in_po = False
			except Exception:
				open_new_isl_file.write(isl_line.encode('utf8'))
			line_num += 1



def main():
	encode_trans_str()

if __name__=="__main__":
	main()