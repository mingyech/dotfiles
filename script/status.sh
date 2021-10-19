#/bin/sh

sept="|"

batt(){
	batt=$(cat /sys/class/power_supply/BAT0/capacity)
}

datetime(){
	datetime=$(date '+%a %d %b %H:%M %Z')
}

vol(){
	vol=$(pamixer --get-volume-human)
}

update(){
	batt
	datetime
	vol
}

while true; do
	update
	xsetroot -name " Vol: $vol $sept Batt: $batt $sept $datetime "
	sleep 1m
done
