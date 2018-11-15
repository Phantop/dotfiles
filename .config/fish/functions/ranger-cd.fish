# Defined in /tmp/fish.UJ4EF5/ranger-cd.fish @ line 2
function ranger-cd
	set tempfile (mktemp -t tmp.XXXXXX)
ranger --choosedir=$tempfile 
cd (cat $tempfile)
rm -f $tempfile
end
