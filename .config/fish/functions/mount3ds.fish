# Defined in /tmp/fish.WPd3oQ/mount3ds.fish @ line 1
function mount3ds
	mount_sd --movable ~/.3ds/movable.sed $D/Installs/Backup/3DS/Nintendo\ 3DS $D/Installs/Backup/3DS/SD
    mount_titledir $D/Installs/Backup/3DS/SD/b81f00ba4783ae5a534430320002544d/title/ $D/Games/Roms/3DS
end
