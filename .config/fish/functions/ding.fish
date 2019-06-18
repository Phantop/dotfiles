# Defined in /tmp/fish.Lg7kpa/ding.fish @ line 2
function ding
	$argv; notify-send (basename $argv)\ is\ done
end
