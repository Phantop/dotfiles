function alpine
    set url https://dl-cdn.alpinelinux.org/alpine/edge/releases/x86_64/
    set file (curl $url | grep s-2 | tac | sed -n 3p | cut -d\" -f2)
    mkdir alpine; curl $url/$file | tar xf - -Calpine
    cp /etc/resolv.conf alpine/etc
    s arch-chroot alpine /bin/ash
end
