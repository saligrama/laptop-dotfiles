#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

source "$HOME/.cache/wal/colors.sh"

discord_status=$(cat /home/asaligrama/.config/dunst/discord_notifs.txt)
if [[ "$discord_status" != "0" ]]; then
    echo "%{B$color12}   $discord_status  "
else
    echo ""
fi
