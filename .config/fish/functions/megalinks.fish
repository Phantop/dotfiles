# Defined in /tmp/fish.xJeaH3/megalinks.fish @ line 2
function megalinks
	megadl (echo "$argv" | base64 -d)
end
