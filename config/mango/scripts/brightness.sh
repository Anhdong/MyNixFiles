#!/usr/bin/env bash

# Change brightness level with `light`.
# You can call this script like this:
# brightness.sh [up|down]

get_brightness() {
	max_brightness=$(brightnessctl max)
	brightnessctl get | awk -v max="$max_brightness" '{printf "%d\n", $1 / max * 100}'
}

send_notification() {
	brightness=$(get_brightness)

	# Send the notification
	notify-send "Brightness: $brightness%" -h int:value:$brightness -t 1000 -h "string:x-canonical-private-synchronous:brightness" -u low
}

case $1 in
up)
	brightnessctl set 5%+
	send_notification
	;;
down)
	brightnessctl set 5%-
	send_notification
	;;
*)
        echo "Usage: $0 [up|down]"
        exit 1
        ;;
esac
