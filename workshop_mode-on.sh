#!/bin/sh
tc qdisc del dev wlan0 root
echo timer > /sys/class/leds/tp-link\:green\:qss/trigger
echo 125 > /sys/class/leds/tp-link\:green\:qss/delay_off
echo 125 > /sys/class/leds/tp-link\:green\:qss/delay_on

