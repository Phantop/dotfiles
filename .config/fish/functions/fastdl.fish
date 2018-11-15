# Defined in /tmp/fish.hwFxZE/fastdl.fish @ line 2
function fastdl
	aria2c --file-allocation=none -c -x 16 -s 16 $argv
end
