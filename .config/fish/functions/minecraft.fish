# Defined in /tmp/fish.HFRAAc/minecraft.fish @ line 2
function minecraft
	cd $D/Games/Minecraft/Game; rm (ff -e log); bin/MultiMC -d .
end
