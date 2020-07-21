function hardinfo -w inxi
	inxi -SPARM -GCDN -v1 -xGCRS -Fxz $argv
end
