#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)
#aur="0"

source "$HOME/.cache/wal/colors.sh"

check=$((pac + aur))
if [[ "$check" != "0" ]]; then
    echo "$pac %{F$color9}%{F-} $aur"
else
    echo ""
    exit
fi
