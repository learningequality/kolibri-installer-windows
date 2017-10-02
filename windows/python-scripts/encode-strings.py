"""
	Work in progress
"""


import os	
import sys
import shutil
import polib

ISL_FILE_NAME="Default.isl"

ARG_ISL_FILE_PATH = sys.argv[1:][0]
ARG_PO_FILE_PATH = sys.argv[1:][1]


def create_isl_file():
    try:
        file = open(ISL_FILE_NAME, 'a')
        file.close()
        return True
    except Exception:
        print 'Failed to create %s \n' % (str(ISL_FILE_NAME))
        return False


def encode_trans_str():	
	# create_isl_file()
	script_path = os.path.dirname(os.path.realpath(__file__))
	new_isl_file = '%s/%s' % (script_path, ISL_FILE_NAME)
	create_isl_file()
	open_new_isl_file = open(new_isl_file, 'w')
	isl_file_path_open = open(ARG_ISL_FILE_PATH)
	po = polib.pofile(ARG_PO_FILE_PATH)
	line_num = 0
	for isl_line in isl_file_path_open:
		try:
			string_line_one = isl_line.split('=')[0].rstrip()
			split_line_two = isl_line.split('=')[1].rstrip()
			wrt = False
			for entry in po:
				if split_line_two == entry.msgid:
					 f_line = '%s=%s \n' % (split_line_one, entry.msgstr)
					 open_new_isl_file.write(f_line.encode('utf8'))
					 wrt = True
			if not wrt:
				open_new_isl_file.write(isl_line.encode('utf8'))		 
			wrt = False
		 
		except Exception:
			open_new_isl_file.write(isl_line.encode('utf8'))
			print line_num
		line_num += 1



def main():
	encode_trans_str()

if __name__=="__main__":
	main()