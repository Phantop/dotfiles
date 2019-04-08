# Defined in - @ line 1
function hardinfo --description 'alias hardinfo inxi -SPARM -GCDN -v1 -xGCRS -Fxz'
	inxi -SPARM -GCDN -v1 -xGCRS -Fxz $argv;
end
