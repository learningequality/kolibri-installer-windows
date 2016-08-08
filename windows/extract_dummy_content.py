#!/usr/bin/env python
# What does this script do:
# * Create a directory for content files
# * Extract the content zip in the KOLIBRI_HOME/temp
# * You can specify the KOLIBRI_HOME where the content files will be extracted. 
#       If the specified path is not available will create it.
# * Move the content files in the content folder
# 
# Example usage: 
#     > cd ~/kolibri-installers/windows/kolibri-batch-file-install/scripts
#     > python extract_dummy_content.py ~/kolibri-installers/windows/kolibri-batch-file-install/content/content.zip ~/.kolibri

import os
import errno
import sys
import zipfile
import shutil

os.environ.setdefault("KOLIBRI_HOME", os.path.join(os.path.expanduser("~"), ".kolibri"))
KOLIBRI_HOME = os.environ['KOLIBRI_HOME']

if len(sys.argv) > 2:
    KOLIBRI_HOME = sys.argv[2]
    if not os.path.exists(KOLIBRI_HOME):
        os.makedirs(KOLIBRI_HOME)

CONTENT_PATH = os.path.join(KOLIBRI_HOME, 'content')
DATABASE_PATH = os.path.join(KOLIBRI_HOME, 'content', 'databases')
CONTENT_WORKING_DIR = os.path.join(KOLIBRI_HOME, 'temp')

def ensure_dir(path):
    """Create the entire directory path, if it doesn't exist already."""
    try:
        os.makedirs(path)
    except OSError as e:
        if e.errno == errno.EEXIST:
            if not os.path.isdir(path):
                raise OSError(errno.ENOTDIR, "Not a directory: '%s'" % path)
            pass  # directory already exists
        else:
            raise

def create_dir():
    """Create the directory path for content"""
    print("Now creating content: %s " % CONTENT_PATH)
    ensure_dir(CONTENT_PATH)
    print("Now creating database: %s" % DATABASE_PATH)
    ensure_dir(DATABASE_PATH)
    print("Now creating temp: %s" % CONTENT_WORKING_DIR)
    ensure_dir(CONTENT_WORKING_DIR)

def extract_content_zip():
    """Extract content.zip to KOLIBRI_HOME/temp"""

    print("Now, extracting the content.zip to %s" % CONTENT_WORKING_DIR)
    if len(sys.argv) > 1:
        CONTENT_ZIP_PATH = sys.argv[1]

    zip_file_path = open(CONTENT_ZIP_PATH, 'rb')
    zip_file = zipfile.ZipFile(zip_file_path)
    for name in zip_file.namelist():
        zip_file.extract(name, CONTENT_WORKING_DIR)
    zip_file_path.close()
    print("Done extracting the content.zip")

def move_content_files():
    """Move the dummy_db.sqlite3 and storage to the content folder"""
    dummy_db_source = os.path.join(CONTENT_WORKING_DIR, 'content', 'databases', 'dummy_db.sqlite3')
    dummy_db_dest = os.path.join(DATABASE_PATH, 'dummy_db.sqlite3')

    os.rename(dummy_db_source, dummy_db_dest)

    storage_dest = os.path.join(CONTENT_PATH, 'storage')
    storage_dir_source = os.path.join(CONTENT_WORKING_DIR, 'content', 'storage')
    if os.path.exists(storage_dest):
        shutil.rmtree(storage_dest)

    shutil.move(storage_dir_source, CONTENT_PATH)

    # Remove KOLIBRI_HOME/temp after moving the content files
    print("Now, removing working directory %s" % CONTENT_WORKING_DIR)
    shutil.rmtree(CONTENT_WORKING_DIR)

try:
    create_dir()
    extract_content_zip()
    move_content_files()
except Exception as e:
    print("An error encountered, now exiting...")
    exit(1)





