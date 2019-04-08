# Defined in /tmp/fish.tGpsnp/gsu.fish @ line 2
function gsu
	git submodule update --init --recursive
    git submodule foreach git pull origin master
end
