function listrecords
    for i in (seq (count $recfiles))
        echo $i: $recfiles[$i]
        printf \t; date -d @(echo $recfiles[$i] | cut -d_ -f3)
        echo \t$reclines[$i]
        echo \t$recfolds[$i]
    end
end
