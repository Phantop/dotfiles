# Defined in /tmp/fish.N4oxkp/squash.fish @ line 2
function squash --wraps=mksquashfs
	mksquashfs . ../(basename $PWD).squashfs -comp zstd -b 1M -Xcompression-level 22 $argv
end
