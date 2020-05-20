# Defined in /tmp/fish.0ygHEX/libpath.fish @ line 1
function libpath
    if test $argv
        export LD_LIBRARY_PATH=$argv LIBGL_DRIVERS_PATH=$argv EGL_DRIVERS_PATH=$argv mesa_glthread=true AMD_DEBUG=nohyperz
    else
        export LD_LIBRARY_PATH=(pwd) LIBGL_DRIVERS_PATH=(pwd) EGL_DRIVERS_PATH=(pwd) mesa_glthread=true AMD_DEBUG=nohyperz
    end
end
