# Defined in /tmp/fish.tGpsnp/gsu.fish @ line 2
function gsu
	g submodule update --init --recursive
    g submodule foreach git pull origin master
end
