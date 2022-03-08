
VERSION := 3.9.10
DIR := python-setup
URL := https://www.python.org/ftp/python/$(VERSION)
PY_32 := python-$(VERSION).exe
PY_64 := python-$(VERSION)-amd64.exe

all:
	wget -r -c --tries=20 -O $(DIR)/$(PY_32) $(URL)/$(PY_32)
	wget -r -c --tries=20 -O $(DIR)/$(PY_64) $(URL)/$(PY_64)
	echo 9c7b1ebdd3a8df0eebfda2f107f1742c $(DIR)/$(PY_32) | md5sum --check -
	echo 72f37686b7ab240ef70fdb931bdf3cb5 $(DIR)/$(PY_64) | md5sum --check -
