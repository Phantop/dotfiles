# Defined in /tmp/fish.GVKGKz/xci2.fish @ line 2
function xci2
	hactool -k ~/.local/share/yuzu/keys/prod.keys --exefsdir="xciDecrypted" --romfs="xciDecrypted/romfs.romfs" xciDecrypted/(ls xciDecrypted/ -S1 | head -n 1)
end
