# Defined in /tmp/fish.SQEYNE/gupall.fish @ line 2
function gupall
	for i in *
        cd $i
        git pull
        cd ..
    end
end
