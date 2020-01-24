# Defined in /tmp/fish.ISD2gG/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game
        rm (ff -e log)
        if not test -e /run/media/glados/disk/jdk/bin/java
            gnome-disk-image-mounter $D/Installs/squash/java
        end
        bin/MultiMC -d . $argv
        rm functions/*
        for i in (ls -d instances/*/ | grep -v _MMC_TEMP | xargs -n1 basename)
            echo  > functions/$i.fish "function $i
            minecraft -l $i; end"
        end
        for i in (cat ~/.config/qutebrowser/quickmarks | cut -d ' ' -f1)
            echo > functions/$i.fish function $i"
            qb / \":quickmark-load $i\"; end"
        end
end
