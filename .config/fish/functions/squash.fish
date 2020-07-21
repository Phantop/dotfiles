function squash -w mksquashfs
	mksquashfs . ../(basename (pwd))Squash -comp zstd -b 1M -Xcompression-level 22 $argv
end
