# Defined in /tmp/fish.pCCKfo/cd.fish @ line 2
function cd
	builtin cd (realpath $argv 2> /dev/null)
end
