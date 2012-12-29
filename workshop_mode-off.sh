#!/bin/sh
tc qdisc add dev wlan0 root tbf rate 2mbit burst 50kb latency 70ms minburst 1540
echo none > /sys/class/leds/tp-link\:green\:qss/trigger
echo 0 > /sys/class/leds/tp-link\:green\:qss/brightness
rm -f /tmp/workshop_mode.timer
