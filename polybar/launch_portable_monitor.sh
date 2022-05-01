#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -c ~/.config/polybar/config_with_portable_monitor bar &
polybar -c ~/.config/polybar/config_with_portable_monitor secondary &
