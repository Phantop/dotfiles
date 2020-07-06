# Defined in /tmp/fish.PGT46K/zcompress.fish @ line 2
function zcompress
    if test -d $argv
        tar -cf $argv.tar $argv
        zstd -19 $argv.tar
        rm $argv.tar
    else
        zstd -19 $argv
    end
end
