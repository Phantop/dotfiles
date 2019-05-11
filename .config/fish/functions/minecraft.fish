# Defined in /tmp/fish.8eD7b7/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game
        rm (ff -e log)
        bin/MultiMC -d . $argv
        rm functions/*
        for i in (ls -d instances/*/ | grep -v _MMC_TEMP | xargs -n1 basename)
            echo  > functions/$i.fish "function $i
            minecraft -l $i; end"
        end
        for i in (cat ~/.config/qutebrowser/quickmarks)
            echo > functions/(echo $i| awk '{print $1;}').fish function (echo $i| awk '{print $1;}') -V "i
            qb (echo \"$i\"| cut -d ' ' -f2); end"
        end
end
