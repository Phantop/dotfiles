# Defined in /tmp/fish.Yy0Eg4/optiflac.fish @ line 2
function optiflac
    mkdir out
    ls *.flac | parallel ffmpeg-static -i {} -c:v copy -c:a flac -compression_level 12 -af aresample=resampler=soxr:precision=32:dither_method=triangular -sample_fmt s16 $argv out/{}
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
    ls | parallel flacc {}
    for i in *
        if test (du $i | cut -f1) -lt (du ../$i | cut -f1)
            echo $i
            mv $i ../$i
        end
    end
    cd ..
end
