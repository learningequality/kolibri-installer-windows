@echo off
TITLE Removing task to start Kolibri at system start
schtasks /delete /tn "Kolibri"
