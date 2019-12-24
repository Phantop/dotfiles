# Defined in /tmp/fish.bZW0nu/focusmode.fish @ line 1
function focusmode
	xmodmap -pke > /tmp/xmod
    if cmp /tmp/xmod ~/.Xmodmap
        xmodmap ~/.Xfocus
    else
        xmodmap ~/.Xmodmap
    end
end
