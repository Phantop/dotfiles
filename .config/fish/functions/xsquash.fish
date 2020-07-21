function xsquash -w mksquashfs
	mksquashfs . ../(basename (pwd))Squash -comp xz -b 1M -Xdict-size 1M $argv
end
