# Defined in /tmp/fish.4ysHXN/mic.fish @ line 2
function mic
	if pactl list short modules | grep loopback
        pactl unload-module module-loopback
    else
	pactl load-module module-loopback
    end
end
