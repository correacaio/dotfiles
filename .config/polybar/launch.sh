#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

if [[ $(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f4 | cut -d"+" -f2- | uniq | wc -l) == 1 ]]; then
  MONITOR=$(polybar --list-monitors | cut -d":" -f1) TRAY_POS=right polybar main &
else
  notebookMonitor=$(xrandr --query | grep primary | cut -d" " -f1)

  for m in $screens; do
    if [[ $notebookMonitor == $m ]]; then
        MONITOR=$m polybar secondary &
    else
        MONITOR=$m polybar main &
    fi
  done
fi
