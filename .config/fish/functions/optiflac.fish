# Defined in /tmp/fish.yFtyWn/optiflac.fish @ line 2
function optiflac
    mkdir out
    for i in *.flac
        ffmpeg -i $i -c:v copy -c:a flac -compression_level 12 -af aresample=resampler=soxr:precision=32:dither_method=triangular -sample_fmt s16 $argv out/$i
    end
    cd out
    for i in *
        if test (du $i | cut -f1) -lt (du ../$i | cut -f1)
            echo $i
            mv $i ../$i
        end
    end
    cd ..
    cp *.flac out
    cd out
    flacc *
    for i in *
        if test (du $i | cut -f1) -lt (du ../$i | cut -f1)
            echo $i
            mv $i ../$i
        end
    end
    cd ..
end
