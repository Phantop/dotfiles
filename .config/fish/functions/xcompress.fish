# Defined in /tmp/fish.83qvw2/xcompress.fish @ line 2
function xcompress
    if test -d $argv
        tar -cf $argv.tar $argv
        xz -efvk9T 0 $argv.tar
        rm $argv.tar
    else
        xz -efvk9T 0 $argv
    end
end
