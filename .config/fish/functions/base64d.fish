# Defined in /tmp/fish.KfrP39/base64d.fish @ line 2
function base64d
	echo (echo $argv | base64 -d 2>/dev/null)
end
