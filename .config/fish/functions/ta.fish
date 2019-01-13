# Defined in /tmp/fish.SPzkH4/ta.fish @ line 2
function ta
	tmux attach -t (math 0 + "0$argv")
end
