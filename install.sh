#!/bin/bash
# Websploit Framework Installation Script
# Created By Fardin Allahverdinazhand
# Report Bug : 0x0ptim0us@gmail.com
if [[ $EUID -ne 0 ]]; then
   echo "You must be root to run this script. Aborting...";
   exit 1;
fi
echo "Welcome To Websploit Framework Install Script"
echo "Installing ..."
sleep 3
cp WebSploit-Framework-3.0.0.tar.gz /opt
cd /opt
tar -xf WebSploit-Framework-3.0.0.tar.gz
chmod 755 /opt/websploit/*
chmod 755 /opt/websploit/modules*
chmod 755 /opt/websploit/modules/fakeupdate/*
chmod 755 /opt/websploit/core/*
ln -s /opt/websploit/websploit /usr/bin/websploit
rm -rf /opt/WebSploit-Framework-3.0.0.tar.gz
echo "Installed Directory : /opt/websploit"
echo "Run From Terminal : sudo websploit"
echo "Installation Complete."
