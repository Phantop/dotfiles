# Defined in /tmp/fish.pQxchw/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game
        rm (ff -e log)
        bin/MultiMC -d . $argv
        for i in (ls -d instances/*/ | grep -v _MMC_TEMP | xargs -n1 basename)
            echo "function $i
            minecraft -l $i
        end" > function/$i.fish
        end
end
