# Defined in /tmp/fish.yHuNyE/dirdl.fish @ line 2
function dirdl
	wget -r -k -p --no-parent --no-clobber -e robots=off $argv
end
