# Defined in /tmp/fish.qyLQlB/mount3ds.fish @ line 2
function 3ds
    mkdir $D/Games/Roms/3DS $D/Installs/Backup/3DS/sd
    mount_sd --movable ~/.3ds/movable.sed $D/Installs/Backup/3DS/Nintendo\ 3DS $D/Installs/Backup/3DS/sd
    mount_titledir $D/Installs/Backup/3DS/sd/b81f00ba4783ae5a534430320002544d/title/ $D/Games/Roms/3DS
end