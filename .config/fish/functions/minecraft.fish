# Defined in /tmp/fish.WOu8ZA/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game
        rm (ff -e log)
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
