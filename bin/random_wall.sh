#!/bin/env bash

wallpaper_folder=~/Pictures/Wallpapers

swww img "$wallpaper_folder/despicable-me.jpg" --transition-fps 120 --transition-type any --transition-duration 3

while true; do
    wallpaper_location="$(ls "$wallpaper_folder" | shuf -n 1)"
    
    if [[ -f $wallpaper_folder/$wallpaper_location ]]; then
        swww img "$wallpaper_folder/$wallpaper_location" --transition-fps 120 --transition-type any --transition-duration 3
    else
        exit 1
    fi

    sleep 60  # Sleep for 10 minutes before changing wallpaper again
done
