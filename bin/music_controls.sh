#!/bin/bash

case "$1" in
    "play-pause")
        sleep 0.2
	    playerctl play-pause
        notify-send "$(playerctl status 2>&1)"
        ;;
    "next")
        sleep 0.2
        playerctl next
        notify-send "$(playerctl status 2>&1)"
        ;;
    "previous")
        sleep 0.2
        playerctl previous
        notify-send "$(playerctl status 2>&1)"
        ;;
    *)
        echo "Invalid option"
        exit 1
        ;;
esac
