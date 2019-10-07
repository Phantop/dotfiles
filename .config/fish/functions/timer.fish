# Defined in /tmp/fish.7W1FjE/timer.fish @ line 2
function timer
	tmux new-session -d 'while true
        countdown 20m
        notify-send Time
        zenity --info --text=Time
    end'
end
