# Defined in /tmp/fish.QM6yoH/etch.fish @ line 1
function etch
	s dd if=$argv[1] |pv| s dd of=$argv[2]
end
