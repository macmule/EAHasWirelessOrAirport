#!/bin/sh
####################################################################################################
#
# More information: http://macmule.com/2011/09/08/need-to-find-out-if-a-mac-has-an-airport-card/
#
# GitRepo: https://github.com/macmule/EAHasWirelessOrAirport/
#
# License: http://macmule.com/license/
#
####################################################################################################

# Checks to see if their is a hardware port called AirPort or Wi-Fi
checkWireless=$(networksetup -listallhardwareports | egrep "Hardware Port: (Air|Wi-)" | awk '{ print $3 }')

if [ -z "$checkWireless" ]; then
	echo "<result>No</result>"
else
	echo "<result>Yes</result>"
fi
