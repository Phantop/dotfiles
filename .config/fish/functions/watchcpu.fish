# Defined in /tmp/fish.8Sf52D/watchcpu.fish @ line 1
function watchcpu
	watch -tn1 "lscpu | grep MHz; printf '\n\n'; sensors"
end
