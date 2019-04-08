function fruitdl
    cd $D/Games/Emulators/$argv[2] 
    rm -r $argv[1]
    set file (curl -sL github.com/$argv[2]-emu/$argv[2]-$argv[1]/releases/latest| grep -om1 $argv[2]-emu/$argv[2]-$argv[1]/releases/download/$argv[1]-[0-9]\*/$argv[2]-linux-[0-9]\*-[0-9a-f]\*).7z
    dl http://github.com/$file
    set file (basename $file)
    7z x $file
    rm $file
end
