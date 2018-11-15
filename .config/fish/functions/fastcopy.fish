# Defined in /tmp/fish.j8Cyly/fastcopy.fish @ line 2
function fastcopy
	rsync -avhcP --no-compress $argv
end
