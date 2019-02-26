# Defined in /tmp/fish.jIk1bT/mcs.fish @ line 2
function mcs
	cd $D/Games/Minecraft/Server
        java -Xmx8G -Xms1G -Xmx1G -XX:+UseG1GC -jar server.jar
end
