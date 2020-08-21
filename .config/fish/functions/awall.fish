# Defined in /tmp/fish.XPtG1H/awall.fish @ line 2
function awall
    if test $argv
        rm ~/Pictures/.wallp
        ln -s ~/Pictures/Awall/$argv* ~/Pictures/.wallp
    end
    kill (pgrep -f "mpv.*wallpaper")
    mpv --profile=wallpaper ~/Pictures/.wallp & disown
    sleep 5
    budgie-panel --replace & disown
    if test $argv
        ffmpeg -i ~/Pictures/Awall/$argv* -vframes 1 -y ~/Pictures/Awall/wall.png
        wallp ~/Pictures/Awall/wall.png
    end
end
