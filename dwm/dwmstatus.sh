#!/bin/sh
battery_now=$(cat /sys/class/power_supply/BAT0/energy_now)
battery_max=$(cat /sys/class/power_supply/BAT0/energy_full)
battery_percent=$(($battery_now/$battery_max))

out=$(
  echo -n "$battery_percent"
  echo -n ' '
)

xsetroot -name "$out"
