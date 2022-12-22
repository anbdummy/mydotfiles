#!/bin/env sh

pkill polybar
sleep 1;
#polybar bottom_bar &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bottom_bar&
  done
else
  polybar --reload bottom_bar &
fi
