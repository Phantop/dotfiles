# Defined in /tmp/fish.TKXhcA/ffl.fish @ line 1
function ffl
	fd\
        -E sys -E caches -E cache -E .cache -E graphicPacks -E proc -E dosdevices -E .git\
        -H -d 5 -t l -i $argv
end
