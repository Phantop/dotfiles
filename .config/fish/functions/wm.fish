# Defined in /tmp/fish.5PPH8M/wm.fish @ line 2
function wm
	startx (which $argv[1]) $argv[2..-1]
end
