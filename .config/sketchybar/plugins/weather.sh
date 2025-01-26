WEATHER=$(ansiweather -l Elche,ES -a false -w false -h false -H false -p false -i false | awk '{print $4 $5}')

NO_WEATHER="-"

if [[ -n $WEATHER ]]; then
  sketchybar --set $NAME label="$WEATHER"
else
  sketchybar --set $NAME label="$NO_WEATHER"
fi
