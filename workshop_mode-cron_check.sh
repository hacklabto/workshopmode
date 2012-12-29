#!/bin/sh
if [ -e /sys/class/leds/tp-link\:green\:qss/delay_on ]; then
	# workshop mode is on, check if it's been long enough to turn it off
	# mark off another run in the status file
	echo -n x >> /tmp/workshop_mode.timer
	if [ $(expr length $(cat /tmp/workshop_mode.timer)) -ge 12 ]; then
		# we've run 12 times which means an hour.  turn workshop mode off
		rm /tmp/workshop_mode.timer
		/root/workshop_mode-off.sh
	fi
fi
