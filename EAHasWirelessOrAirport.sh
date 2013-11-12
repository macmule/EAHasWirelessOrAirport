#!/bin/sh

checkWireless=$(networksetup -listallhardwareports | egrep "Hardware Port: (Air|Wi-)" | cut -c 16-)
if [ -n "${checkWireless}" ]; then
  echo "Yes"
else
  echo "No"
fi
