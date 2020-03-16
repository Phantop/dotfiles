# Defined in /tmp/fish.QZ1PN5/pagedl.fish @ line 2
function pagedl
	wget -H -k -p --no-clobber -e robots=off $argv
end
