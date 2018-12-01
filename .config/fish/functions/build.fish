# Defined in /tmp/fish.g6wC1F/build.fish @ line 2
function build
	s printf \ 
    gp
    ./autogen.sh
    ./configure --prefix=/usr
    cmake .
    make
    s make install
end
