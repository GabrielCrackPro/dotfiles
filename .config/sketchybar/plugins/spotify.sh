osascript -e '
if application "Spotify" is running then
    tell application "Spotify"
        if player state is playing then
            return (get name of current track)
        else
            return "En pausa"
        end if
    end tell
end if
return "None"
'
