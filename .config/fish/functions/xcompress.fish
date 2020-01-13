# Defined in /tmp/fish.RFrpYE/xcompress.fish @ line 2
function xcompress
	if test -d $argv
        zip -0r $argv.zip $argv
        xz -efvk9T 0 $argv.zip
        rm $argv.zip
    else
        xz -efvk9T 0 $argv
    end
end
