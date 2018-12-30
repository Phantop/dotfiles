# Defined in /tmp/fish.SBvuh1/build.fish @ line 2
function build
	s printf \ 
    gp
    ./autogen.sh
    ./configure --prefix=/usr
    cmake -DCMAKE_INSTALL_PREFIX=/usr .
    make
    s make install
    meson build
    ninja -C build
    sudo ninja -C build install
end
