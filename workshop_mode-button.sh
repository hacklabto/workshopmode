#!/bin/sh
if [ -e /sys/class/leds/tp-link\:green\:qss/delay_on ]; then
	# workshop mode is on, turn it off
	/root/workshop_mode-off.sh
else
	# workshop mode is off, turn it on
	/root/workshop_mode-on.sh
fi
