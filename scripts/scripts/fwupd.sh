#!/usr/bin/sh

sudo fwupdmgr --force get-devices;
sudo fwupdmgr --force refresh;
sudo fwupdmgr --force get-updates;
sudo fwupdmgr --force update;
