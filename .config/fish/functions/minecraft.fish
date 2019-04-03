# Defined in /tmp/fish.y65rtl/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game; rm (ff -e log); bin/MultiMC -d . $argv
end
