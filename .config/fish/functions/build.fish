# Defined in /tmp/fish.3ztUnh/build.fish @ line 2
function build
    s printf ''
    gp
    ./autogen.sh --prefix=/usr
    ./configure --prefix=/usr
    cmake -DCMAKE_INSTALL_PREFIX=/usr .
    s printf ''
    make
    s make install
    meson --prefix=/usr build
    s printf ''
    ninja -C build
    sudo ninja -C build install
end
