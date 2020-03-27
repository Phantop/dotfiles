# Defined in /tmp/fish.bWbyG9/covid.fish @ line 2
function covid
    test $argv && curl https://covid19tracker.xyz/cmd/$argv 2> /dev/null | head -n17 || curl https://covid19tracker.xyz/cmd 2> /dev/null | head -n12
end
