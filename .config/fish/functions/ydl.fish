# Defined in /tmp/fish.YYmq1V/ydl.fish @ line 2
function ydl
	youtube-dl --continue --ignore-errors --no-overwrites --external-downloader=aria2c $argv
end
