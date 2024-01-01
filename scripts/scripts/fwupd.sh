#!/usr/bin/sh
# Firmware update

doas fwupdmgr --force get-devices;
doas fwupdmgr --force refresh;
doas fwupdmgr --force get-updates;
doas fwupdmgr --force update;
