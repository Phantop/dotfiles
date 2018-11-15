# Defined in /tmp/fish.XYALhp/build.fish @ line 2
function build
	s printf \ 
    g pull
    ./autogen.sh
    ./configure --prefix=/usr
    cmake .
    make
    s make install
end
