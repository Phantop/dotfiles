# Defined in /tmp/fish.xOFV2s/gupall.fish @ line 1
function gupall
	for i in *
        cd $i
        git pull
        cd ..
    end
end
