# Defined in /tmp/fish.ozWZUL/squash.fish @ line 2
function squash
	mksquashfs . ../(basename (pwd))Squash -comp zstd -b 1M -Xcompression-level 22
end
