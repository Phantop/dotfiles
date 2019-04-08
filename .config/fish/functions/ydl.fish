function ydl
	youtube-dl --continue --ignore-errors --no-overwrites --external-downloader=aria2c $argv
end
