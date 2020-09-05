# Defined in /tmp/fish.J0dXw4/ydl.fish @ line 2
function ydl --wraps=youtube-dl
	youtube-dl --continue --ignore-errors --no-overwrites --write-auto-sub --write-sub --embed-subs --sub-lang=en -o '%(title)s.%(ext)s' $argv
end
