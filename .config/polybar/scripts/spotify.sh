#!/bin/bash
STATUS=$(playerctl -p spotify status 2>&1)

if [ "$STATUS" == "Playing" ] || [ "$STATUS" == "Paused"  ]; then
    title=$(playerctl -p spotify metadata title)
    artist=$(playerctl -p spotify metadata artist)

    if [ ${#title} -gt 35 ]; then 
        title=${title:0:32}...
    fi

    formatted=$(echo " $artist - $title")
    echo $formatted
else
    echo " Spotify not playing"
fi
