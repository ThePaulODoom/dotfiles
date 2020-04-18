#!/bin/bash

tme() {
	dte="+@fg=0; $(date +"%A, %B %d %H:%M:%S %p")"
	echo -e "$dte"
}

while true; do
	echo -e "$(tme)"
	sleep 1s
done
