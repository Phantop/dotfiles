# Defined in /tmp/fish.ijOPnW/qb.fish @ line 2
function qb --wraps=qutebrowser
	qutebrowser $argv --target auto & disown
        rm -r VideoDecodeStats
end
