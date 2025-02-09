function ptest
    set seed $argv[1]
    set cmnd /src/(string replace -- / /ptest/ $argv[2])
    set args $argv[3..-1]
    eval ARTEST_RANDSEED=$seed $cmnd $args
end
