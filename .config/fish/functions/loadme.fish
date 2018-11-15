# Defined in /tmp/fish.JncNtd/loadme.fish @ line 2
function loadme
	cat /usr/bin/* /usr/lib32/*.so /usr/lib64/*.so > /dev/null; exit
end
