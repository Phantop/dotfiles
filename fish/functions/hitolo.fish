function hitolo
    mkdir /tmp/foo
    ifuse --documents com.foobar2000.mobile /tmp/foo || return 1
    # https://github.com/smxi/acxi/raw/stable/acxi
    acxi -s ~/Music/HiFi -d /tmp/foo -o opus -q 128 --clean sync -F 64 -c mp3,m4a,opus,ogg,aac
    fusermount -u /tmp/foo
    rmdir /tmp/foo
end
