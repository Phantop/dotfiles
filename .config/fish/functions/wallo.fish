# Defined in /tmp/fish.Z2h5NN/wallo.fish @ line 2
function wallo
	convert $argv -resize (xrandr | grep '*'| grep -o [0-9]\*x[0-9]\*) ~/.config/wall0
end
