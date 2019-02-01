
VERSION := 3.4.3
DIR := python-setup
URL := https://www.python.org/ftp/python/$(VERSION)
PY_32 := python-$(VERSION).msi
PY_64 := python-$(VERSION).amd64.msi

all:
	aria2c --allow-overwrite -d $(DIR) $(URL)/$(PY_32)
	aria2c --allow-overwrite -d $(DIR) $(URL)/$(PY_64)
	
