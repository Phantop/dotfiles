# Defined in /tmp/fish.zzZ7OS/deb.fish @ line 1
function deb
	ar -x $argv
zcat data.tar.gz | s tar xv
end
