# Defined in /tmp/fish.nBVrL3/squash.fish @ line 2
function squash
	mksquashfs . ../(basename (pwd))Squash -comp xz -b 1M
end
