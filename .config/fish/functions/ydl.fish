function ydl -w youtube-dl
	youtube-dl --continue --ignore-errors --no-overwrites --write-sub --embed-subs -o '%(title)s.%(ext)s' $argv
end
