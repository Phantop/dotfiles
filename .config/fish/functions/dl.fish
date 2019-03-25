# Defined in /tmp/fish.0D6Y21/dl.fish @ line 2
function dl
	if test $argv
        wget $argv
    else
	cd ~/Downloads/
    end
end
