# Defined in /tmp/fish.B19DWM/optiflac.fish @ line 2
function optiflac
    mkdir out
    ls *.flac | parallel ffmpeg -i {} -c:v copy -c:a flac -compression_level 12 $argv out/{}
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
    rm -r out
end
