# Defined in /tmp/fish.B18EzR/ydl.fish @ line 2
function ydl
	youtube-dl --continue --ignore-errors --no-overwrites --write-sub --embed-subs $argv
end
