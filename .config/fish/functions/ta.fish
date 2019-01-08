# Defined in /tmp/fish.FDoq61/ta.fish @ line 2
function ta
	tmux attach -t (math 0 + "0$argv[1]") $argv[2..-1]
end
