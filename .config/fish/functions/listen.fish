# Defined in /tmp/fish.cmP40P/listen.fish @ line 2
function listen
	if pactl list short modules | grep loopback
        pactl unload-module module-loopback
    else
        pactl load-module module-loopback
    end
end