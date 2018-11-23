# Defined in /tmp/fish.ASZhcy/gsu.fish @ line 1
function gsu
	git submodule foreach --recursive git pull origin master $argv
end
