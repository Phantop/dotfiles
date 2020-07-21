function zcompress
    if test -d $argv
        tar -cf $argv.tar $argv
        zstd -19 $argv.tar
        rm $argv.tar
    else
        zstd -19 $argv
    end
end
