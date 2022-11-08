#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

source "$HOME/.cache/wal/colors.sh"

player_status=$(playerctl -p spotify status 2>&1 | tr -d '\r')
if [[ "$player_status" != "No players found" ]]; then
    metadata="$(playerctl -p spotify metadata title) - $(playerctl -p spotify metadata artist)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{B$color2}   $metadata  "       # Green when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{B$color8}   $metadata  "       # Greyed out info when paused
else
    echo ""
fi
