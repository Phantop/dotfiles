# Defined in /tmp/fish.tbkHRu/fruitdl.fish @ line 2
function fruitdl
	set emu $argv[2]
    cd $D/Games/Emulators/$emu 
    set file (wget -O- -o /dev/tty github.com/$emu-emu/$emu-$argv[1]/releases/latest| grep -o -m1 $emu-emu/$emu-$argv[1]/releases/download/$argv[1]-[0-9]\*/$emu-linux-[0-9]\*-[0-9a-f]\* | head -1)

    if grep $file emuver
        echo "$emu is already updated"
    else
        rm -r $argv[1]
        fastdl https://www.github.com/$file.7z
        7z x (basename $file).7z
        echo $file > emuver
        rm (basename $file).7z
    end

    eval $emu
end
