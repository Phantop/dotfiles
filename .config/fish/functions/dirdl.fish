function dirdl -w wget
	wget -r -k -p --no-parent --no-clobber -e robots=off $argv
end
