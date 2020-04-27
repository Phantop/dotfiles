# Defined in /tmp/fish.YGBcMf/optiflac.fish @ line 2
function optiflac
    mkdir out
    for i in *.flac
        ffmpeg -i $i -c:v copy -c:a flac -compression_level 12 -af aformat=s16:44100 out/$i
    end
    cd out
    for i in (ff -e flac)
        if test (du $i | cut -f1) -lt (du ../$i | cut -f1)
            echo $i
            mv $i ../$i
        end
    end
    cd ..
end
