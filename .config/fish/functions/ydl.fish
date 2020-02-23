# Defined in /tmp/fish.Cfc1Xs/ydl.fish @ line 2
function ydl
	youtube-dl --continue --ignore-errors --no-overwrites --write-sub --embed-subs -o '%(title)s.%(ext)s' $argv
end
