# Defined in /tmp/fish.KHZB83/base64d.fish @ line 2
function base64d
	echo "$argv" | base64 -d | xclip -selection clipboard
end
