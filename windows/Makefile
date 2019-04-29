
VERSION := 3.4.3
DIR := python-setup
URL := https://www.python.org/ftp/python/$(VERSION)
PY_32 := python-$(VERSION).msi
PY_64 := python-$(VERSION).amd64.msi

all:
	wget -r -c --tries=20 -O $(DIR)/$(PY_32) $(URL)/$(PY_32)
	wget -r -c --tries=20 -O $(DIR)/$(PY_64) $(URL)/$(PY_64)
	echo cb450d1cc616bfc8f7a2d6bd88780bf6 $(DIR)/$(PY_32) | md5sum --check -		
	echo f6ade29acaf8fcdc0463e69a6e7ccf87 $(DIR)/$(PY_64) | md5sum --check -

