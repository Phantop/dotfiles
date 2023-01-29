function record
    set recfile /tmp/fish_$fish_pid\_$(date +%s.%N)
    set -g --append recfiles $recfile
    set -g --append reclines "$argv"
    set -g --append recfolds $PWD

    if test (type -t $argv[1]) = file
        script -efq $recfile -c "$argv"
    else
        script -efq $recfile -c "fish -c '$argv'"
    end

    zstdmt -c $recfile &| sponge $recfile

    function rmrec_(basename $recfile) --on-event fish_exit -V recfile
        rm $recfile
    end
end
