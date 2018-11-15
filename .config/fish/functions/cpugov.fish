# Defined in /tmp/fish.EI2lVJ/cpugov.fish @ line 2
function cpugov
	set state ( cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor )
    set newState ""
    echo -e "The current state is [ $state ]"
    if [ $state != "performance" ] 
        s -i cpupower frequency-set -g performance >/dev/null
        set newState ( cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor )
    else
        s cpupower frequency-set -g powersave >/dev/null
        set newState ( cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor )	
    end
    echo -e "Now in *** $newState *** mode"
end
