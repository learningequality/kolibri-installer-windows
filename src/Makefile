
VERSION := 3.8.10
DIR := python-setup
URL := https://www.python.org/ftp/python/$(VERSION)
PY_32 := python-$(VERSION).exe
PY_64 := python-$(VERSION)-amd64.exe

all:
	wget -r -c --tries=20 -O $(DIR)/$(PY_32) $(URL)/$(PY_32)
	wget -r -c --tries=20 -O $(DIR)/$(PY_64) $(URL)/$(PY_64)
	echo b355cfc84b681ace8908ae50908e8761 $(DIR)/$(PY_32) | md5sum --check -
	echo 62cf1a12a5276b0259e8761d4cf4fe42 $(DIR)/$(PY_64) | md5sum --check -
