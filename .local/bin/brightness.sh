#!/usr/bin/zsh

# You can call this script like this:
# $./brightness.sh up
# $./brighness.sh down
# $./brightness.sh mute

function get_brightness {
    light -G
}

function send_notification {
    brightness=`get_brightness`
    # Send the notification
    notify-send -t 500 -u low "BRI: $brightness"
}

case $1 in
    up)
	# Up the brightness (+ 1%)
	sudo light -A 2 > /dev/null
	send_notification
	;;
    down)
	sudo light -U 2 > /dev/null
	send_notification
	;;
esac
