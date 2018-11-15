# Defined in /tmp/fish.SbwYNN/rpcs3.fish @ line 1
function rpcs3
	cd $D/Games/Emulators/rpcs3/
    wget -O- -o /dev/tty https://rpcs3.net/download | grep -o -m1 https://rpcs3.net/cdn/builds/rpcs3-v.\*_linux64.AppImage
end
