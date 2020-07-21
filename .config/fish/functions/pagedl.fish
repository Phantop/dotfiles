function pagedl -w wget
	wget -H -k -p --no-clobber -e robots=off $argv
end
