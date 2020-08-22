# Defined in /tmp/fish.YTcC09/cpugov.fish @ line 2
function cpugov
   sudo cpupower frequency-set -g performance > /dev/null && echo Now in performance mode
end
