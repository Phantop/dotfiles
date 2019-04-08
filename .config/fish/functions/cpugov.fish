function cpugov
	echo -e "The current state is "(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
   if [ (cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor) != "performance" ] 
       s -i cpupower frequency-set -g performance >/dev/null
   else
       s cpupower frequency-set -g powersave >/dev/null
   end
   echo -e "The current state is "(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
end
