# Defined in /tmp/fish.Ce3uv4/squash.fish @ line 2
function squash
	mksquashfs . ../(basename (pwd))Squash -comp xz -b 1M -Xdict-size 1M
end
