#! /bin/bash
if test -e /sys/class/power_supply/BAT0/capacity; then
  cat /sys/class/power_supply/BAT0/capacity /sys/class/power_supply/BAT0/status >&2
elif test -e /sys/class/power_supply/BAT1/capacity; then
  cat /sys/class/power_supply/BAT1/capacity /sys/class/power_supply/BAT1/status >&2
else
  exit 1
fi