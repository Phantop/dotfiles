# Defined in /tmp/fish.JkZKD9/awall.fish @ line 2
function awall
    if test $argv
        rm ~/Videos/.wallp
        ln -s ~/Videos/Walls/$argv* ~/Videos/.wallp
    end
    kill (pgrep -f "mpv.*wallpaper")
    mpv --profile=wallpaper ~/Videos/.wallp & disown
    sleep 5
    budgie-panel --replace & disown
    if test $argv
        ffmpeg -i ~/Videos/Walls/$argv* -vframes 1 -y ~/Videos/Walls/wall.png
        wallp ~/Videos/Walls/wall.png
    end
end
