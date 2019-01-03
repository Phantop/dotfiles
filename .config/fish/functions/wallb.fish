# Defined in /tmp/fish.T58iWy/wallb.fish @ line 1
function wallb
	rm ~/.config/wall0
        convert $argv -blur 0x8 ~/.config/wall0
end
