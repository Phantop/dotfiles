# Defined in /tmp/fish.VJPA2j/clip.fish @ line 1
function clip
    if test $argv
        echo $argv | xclip -i -selection clipboard
    else
        cat - | xclip -i -selection clipboard
    end
end
