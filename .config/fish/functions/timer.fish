# Defined in /tmp/fish.dHrfIi/timer.fish @ line 2
function timer
	tmux new-session -d 'while true
        countdown 20m
        notify-send Time
        zenity --info --text=Time & mpv ~/Music/.break
    end'
end
