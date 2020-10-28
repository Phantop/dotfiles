# Defined in /tmp/fish.L1Go55/ydl.fish @ line 2
function ydl --wraps=youtube-dl --wraps=youtube-dlc
	youtube-dlc --continue --ignore-errors --no-overwrites --write-auto-sub --write-sub --embed-subs --sub-lang=en -o '%(title)s.%(ext)s' $argv
end
