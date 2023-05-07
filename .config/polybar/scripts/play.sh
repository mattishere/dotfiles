#!/bin/bash
STATUS=$(playerctl -p spotify status 2>&1)

if [ "$STATUS" == "Playing" ]; then
    echo "󰏥"
elif [ "$STATUS" == "Paused" ]; then
    echo "󰐌"
else 
    echo "󰐌"
fi
