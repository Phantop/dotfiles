function hitolo
    rprocess --src ~/Music/HiFi --dst ~/Music/LoFi --ext flac,m4a,opus,mp3,aac,ogg --out-ext opus --cmd (which hitolo.sh) --delete --job 64
    mkdir /tmp/foo
    ifuse --documents com.foobar2000.mobile /tmp/foo || return 1
    rsync -ahuP --del ~/Music/LoFi/ /tmp/foo
    fusermount -u /tmp/foo
    rmdir /tmp/foo
end
