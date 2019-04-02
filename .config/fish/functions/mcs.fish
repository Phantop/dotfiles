# Defined in /tmp/fish.zaMnOQ/mcs.fish @ line 2
function mcs
	cd $D/Games/Minecraft/Server
        java -Xmx8G -Xms1G -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -XX:ParallelGCThreads=4 -jar server.jar nogui
end
