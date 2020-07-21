function timer
	tmux new -s 0 -d 'while true
        countdown 20m
        notify-send Time
        zenity --info --text=Time & mpv ~/Music/.break
    end'
end
