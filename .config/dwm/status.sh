#!/bin/bash
function timeanddate() {
	date +"%A, %B %e %T %Z"
}
function bat() {
	echo -e "$(cat /sys/class/power_supply/BAT1/capacity) ($(cat /sys/class/power_supply/BAT1/capacity_level))"
}
while true; do
	xsetroot -name "$(echo -e "$(bat) | $(timeanddate)")"
	sleep 1s;
done
