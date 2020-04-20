#!/bin/bash

tme() {
	dte="+@fg=1; $(date +"%A, %B %d %H:%M:%S %p")+@fg=0;"
	echo -e "$dte"
}

battry() {
	bat="+@fg=2; $(cat /sys/class/power_supply/BAT1/capacity) ($(cat /sys/class/power_supply/BAT1/capacity_level))+@fg=0;"
	echo -e "$bat"
}

while true; do
	echo -e "$(battry) | $(tme)"
	sleep 1s
done
