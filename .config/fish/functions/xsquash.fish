function xsquash
	mksquashfs . ../(basename (pwd))Squash -comp xz -b 1M -Xdict-size 1M
end
