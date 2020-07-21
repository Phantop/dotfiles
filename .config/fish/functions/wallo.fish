function wallo -w convert
	rm ~/.config/wall0
	convert $argv -resize (xrandr | grep '*'| grep -o [0-9]\*x[0-9]\*) ~/.config/wall0
end
