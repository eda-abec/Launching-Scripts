#!/usr/bin/env sh
#
# Switchere - script for periodically switching the SSID in Eaphammer
#
# author: eda-abec
# 2022
#
# Actually works by restarting Eaphammer for switching the SSID
# and uses eaph_flush.sh, a script to immediately flush its logs
# (not required, can be modified to work with Eaphammer directly)
#
# usage:
#  sudo switchere.sh list.csv interface
#   - list: csv file in format SSID:time, one per row
#       - the time is in format that UNIX utilty `sleep` accpets, like "1m", "30s" and so on
#   - interface: the interface to run on, optional, defaults to wlan0


# root check
if ((EUID != 0)); then
  exec sudo -u \#0 $0 $@
fi

iface=$2
if [ -z $iface ]; then
    iface=wlan0
fi

waiter() {
    sleep $1 ; echo ""
}

#temporary values
time=1m
ssid=helloWorld

continue=true
user_interrupt () {
    continue=false
}
trap user_interrupt SIGINT SIGTERM

while $continue
do
    while IFS=";", read -r ssid time && $continue
    do
        echo "[switchere] Running with $ssid for $time"
        waiter $time | ./eaph_flush.sh $ssid $iface 2> /dev/null
    done < $1
done


