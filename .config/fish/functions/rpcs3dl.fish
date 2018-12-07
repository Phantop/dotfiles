# Defined in /tmp/fish.CYevIG/rpcs3dl.fish @ line 2
function rpcs3dl
	cd $D/Games/Emulators/rpcs3/
    rm ./*.AppImage
    wget (wget -O- -o /dev/tty https://rpcs3.net/download | grep -o -m1 https://rpcs3.net/cdn/builds/rpcs3-v.\*_linux64.AppImage)
    chmod +x *.AppImage
    rm rpcs3
    ln -s *.AppImage rpcs3
    rpcs3
end
