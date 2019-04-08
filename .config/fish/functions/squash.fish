function squash
	mksquashfs . ../(basename (pwd))Squash -comp xz -b 1M
end
