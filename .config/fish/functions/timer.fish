# Defined in /tmp/fish.HpGyIZ/timer.fish @ line 2
function timer
	if tty | grep 'not a tty'
        qb / ":quickmark-load timer";
    else
        while true
            for i in (seq -w 1200 -1 0)
                echo (math -s0 $i/60):(math $i%60)
                sleep 1
            end
            zenity --info --text=Time to take a break!
        end
    end
end
