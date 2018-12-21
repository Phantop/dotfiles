# Defined in /tmp/fish.bDC1Cu/gsu.fish @ line 2
function gsu
	g submodule foreach --recursive 
        g pull origin master $argv
end
