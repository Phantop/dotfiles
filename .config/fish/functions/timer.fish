# Defined in /tmp/fish.q2rjYH/timer.fish @ line 2
function timer
	tmux new-session -d 'while true
        countdown 20m
        zenity --info --text=Time
    end'
end
