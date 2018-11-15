# Defined in /tmp/fish.OwF41R/mp3tag.fish @ line 2
function mp3tag
	wine $D/Tools/Windows/mp3tag/Mp3tag.exe (pwd); disown
end
