# Defined in /tmp/fish.2QDpqS/awall.fish @ line 2
function awall
    if test $argv
        rm ~/Videos/.wallp
        ln -s ~/Videos/Walls/$argv* ~/Videos/.wallp
    end
    kill (pgrep -f "mpv.*wallpaper")
    mpv --profile=wallpaper ~/Videos/.wallp & disown
    budgie-panel --replace & disown
end
