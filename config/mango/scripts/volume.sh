#!/usr/bin/env bash

# Changes de volume of the default sink
# I'd advice to not go above 150% (which is the standard cap).
# You can call this script like this:
# volume.sh [up|down|mute]

get_volume() {
	wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}'
}

is_muted() {
	wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -i muted
}

send_notification() {
	volume=$(get_volume)
	

	if is_muted; then
		notify-send "Volume: Muted" -t 1000 -h "string:x-canonical-private-synchronous:volume" -u low
	else
		notify-send "Volume: ${volume}%" -h int:value:${volume}  -t 1000 -h "string:x-canonical-private-synchronous:volume" -u low
	fi
}

case $1 in
    up)
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ --limit 1.0
	send_notification
	;;
    down)
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
	send_notification
	;;
    mute)
	wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
	send_notification
	;;
    *)
        echo "Usage: $0 [up|down|mute]"
        exit 1
        ;;
esac

