#!/bin/bash
max=$(brightnessctl m)
current=$(brightnessctl g)
new_value=$(( current - (max * "$1" / 100) ))

if [[ "$new_value" -le 7 ]]; then
  brightnessctl s 1
else
  brightnessctl s "$1%-"
fi
