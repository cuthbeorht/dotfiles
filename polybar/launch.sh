#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

for m in $(polybar -m | cut -d: -f1); do
  MONITOR=$m polybar top &
  MONITOR=$m polybar bottom &
done