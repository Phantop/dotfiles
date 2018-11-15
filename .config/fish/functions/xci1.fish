# Defined in /tmp/fish.P4iOJR/xci1.fish @ line 2
function xci1
	hactool -k ~/.local/share/yuzu/keys/prod.keys -txci --securedir="xciDecrypted" "$argv"
end
