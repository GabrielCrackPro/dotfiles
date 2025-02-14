#!/bin/bash

# Extract uptime field and clean it
UPTIME_RAW=$(uptime | awk -F'up ' '{print $2}' | awk -F',' '{print $1}')

# Parse uptime into hours and minutes
if [[ "$UPTIME_RAW" =~ ([0-9]+):([0-9]+) ]]; then
  HOURS=${BASH_REMATCH[1]}
  MINUTES=${BASH_REMATCH[2]}
elif [[ "$UPTIME_RAW" =~ ([0-9]+)\ mins? ]]; then
  HOURS=0
  MINUTES=${BASH_REMATCH[1]}
elif [[ "$UPTIME_RAW" =~ ([0-9]+)\ hrs? ]]; then
  HOURS=${BASH_REMATCH[1]}
  MINUTES=0
else
  HOURS=0
  MINUTES=0
fi

# Ensure two-digit format
HOURS=$(printf "%02d" "$HOURS")
MINUTES=$(printf "%02d" "$MINUTES")

# Format the output
LABEL="$HOURS:$MINUTES"

sketchybar --set "$NAME" label="$LABEL"
