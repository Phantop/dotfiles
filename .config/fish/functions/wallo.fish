# Defined in /tmp/fish.LxG0t1/wallo.fish @ line 2
function wallo
	rm ~/.config/wall0
	convert $argv -resize (xrandr | grep '*'| grep -o [0-9]\*x[0-9]\*) ~/.config/wall0
end
