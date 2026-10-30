#!/bin/bash
# This script is intended to let me toggle my power profiles with
# my F8 ("Mode") key. 
current=$(tlpctl get)

if [[ "$current" = "balanced" ]]; then
  tlpctl set performance
elif [[ "$current" = "performance" ]]; then
  tlpctl set power-saver
else
  tlpctl set balanced
fi

# if you are using powerprofilesctl,
# simply replace each "tlpctl" with powerprofilesctl
