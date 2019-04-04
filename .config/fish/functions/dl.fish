# Defined in /tmp/fish.BCfXZv/dl.fish @ line 2
function dl
	if test $argv
        aria2c --file-allocation=none -c -x 16 -s 16 $argv
    else
	cd ~/Downloads/
    end
end
