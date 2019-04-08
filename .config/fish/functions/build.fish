function build
	s printf \ 
   gp
   ./autogen.sh
   ./configure --prefix=/usr
   cmake -DCMAKE_INSTALL_PREFIX=/usr .
   make
   s make install
   meson --prefix=/usr build
   ninja -C build
   sudo ninja -C build install
end
