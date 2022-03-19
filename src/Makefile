
VERSION := 3.9.10
DIR := python-setup
URL := https://www.python.org/ftp/python/$(VERSION)
PY_32 := python-$(VERSION).exe
PY_64 := python-$(VERSION)-amd64.exe

all:
	wget -r -c --tries=20 -O $(DIR)/$(PY_32) $(URL)/$(PY_32)
	wget -r -c --tries=20 -O $(DIR)/$(PY_64) $(URL)/$(PY_64)
	echo 457d648dc8a71b6bc32da30a7805c55b $(DIR)/$(PY_32) | md5sum --check -
	echo 747ac35ae667f4ec1ee3b001e9b7dbc6 $(DIR)/$(PY_64) | md5sum --check -
