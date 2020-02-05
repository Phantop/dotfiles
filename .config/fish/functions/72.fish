# Defined in /tmp/fish.73stHk/72.fish @ line 1
function 72
	xrandr --newmode (cvt 1920 1080 72 | tail -n1 | cut -d' ' -f2- | tr ' ' \n | awk '$1=$1')
xrandr --addmode (xrandr --listactivemonitors | tail -n1 | cut -d' ' -f5- | awk '$1=$1') (cvt 1920 1080 72 | tail -n1 | cut -d' ' -f2)
xrandr --output (xrandr --listactivemonitors | tail -n1 | cut -d' ' -f5- | awk '$1=$1') --mode (cvt 1920 1080 72 | tail -n1 | cut -d' ' -f2)
end