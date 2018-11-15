# Defined in /tmp/fish.NwUwdx/megacrypt.fish @ line 1
function megacrypt
	qb (echo "$argv" | base64 -d)
end
