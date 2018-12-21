# Defined in /tmp/fish.iAzJE2/minecraftserver.fish @ line 2
function mcs
	cd $D/Games/Minecraft/Server
        java -Xmx8G -Xms128M -XX:+UseConcMarkSweepGC -jar server.jar nogui
end
