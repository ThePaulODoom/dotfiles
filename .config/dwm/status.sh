#!/bin/sh
timeanddate() {
	date +"%A, %B %e %T %Z"
}
bat() {
	echo "$(cat /sys/class/power_supply/BAT1/capacity) ($(cat /sys/class/power_supply/BAT1/capacity_level))"
}

while true; do
	xsetroot -name "$(echo "$(bat) | $(timeanddate)")"
	sleep 1s;
done
