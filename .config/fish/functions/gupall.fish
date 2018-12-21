# Defined in /tmp/fish.SQEYNE/gupall.fish @ line 2
function gupall
	for i in *
        cd $i
        g pull
        cd ..
    end
end
