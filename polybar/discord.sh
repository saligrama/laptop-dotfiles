#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

discord_status=$(cat /home/asaligrama/.config/dunst/discord_notifs.txt)
if [[ "$discord_status" != "0" ]]; then
    echo "%{F#BF616A}  $discord_status"
else
    echo ""
fi
