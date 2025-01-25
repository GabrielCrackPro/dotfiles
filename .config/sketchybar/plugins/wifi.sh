#!/bin/bash

SSID=$(ipconfig getsummary en0 | awk -F ' SSID : ' '/ SSID : / {print $2}')

if [[ -z "$SSID" ]] || [[ "$SSID" == "" ]]; then
  sketchybar --set wifi label="Disconnected"
else
  sketchybar --set wifi label="$SSID"
fi
