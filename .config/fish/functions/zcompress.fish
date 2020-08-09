# Defined in /tmp/fish.E9SjCK/zcompress.fish @ line 2
function zcompress
    if test -d $argv
        tar -cf $argv.tar $argv
        zstd -T0 -19 $argv.tar
        rm $argv.tar
    else
        zstd -T0 -19 $argv
    end
end
