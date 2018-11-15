# Defined in /tmp/fish.N4Fl24/cpu.fish @ line 1
function cpu
	lscpu | grep MHz; printf '\n\n'; sensors
end
