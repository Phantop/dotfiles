function viewrecord
    if test $argv
        set num $argv
    else
        listrecords
        echo Input the number of the desired recording:
        set num (read)
    end

    if test $KITTY_PID
        kitty @ launch --type=tab --hold zstdcat $recfiles[$num]
    else
        clear
        zstdcat $recfiles[$num]
    end
end
