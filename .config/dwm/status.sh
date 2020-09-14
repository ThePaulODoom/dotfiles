#!/bin/bash
function timeanddate() {
	date
}
function bat() {
	echo -e "$(cat /sys/class/power_supply/BAT1/capacity) ($(cat /sys/class/power_supply/BAT1/capacity_level))"
}
while true; do
	xsetroot -name "$(echo -e "$(bat) | $(date)")"
	sleep 1s;
done
