# Defined in /tmp/fish.kGwYO8/addpath.fish @ line 1
function addpath
    if test $argv
        set PATH $argv $PATH
    else
        set PATH (pwd) $PATH
    end
end
