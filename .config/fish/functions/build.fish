# Defined in /tmp/fish.kRzbVF/build.fish @ line 2
function build
	s printf \ 
    gp
    ./autogen.sh
    ./configure --prefix=/usr
    cmake .
    make
    s make install
    meson build
    ninja -C build
    sudo ninja -C build install
end
