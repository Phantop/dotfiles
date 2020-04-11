# Defined in /tmp/fish.STnBun/minecraft.fish @ line 2
function minecraft
    cd $D/Games/Minecraft/Game
    rm (ff -e log)
    if not which java
        gnome-disk-image-mounter $D/Installs/squash/java
        if not pgrep caja
            caja & sleep 1
            kj
        end
    end
    set -x PATH /run/media/$USER/disk*/bin $PATH
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
