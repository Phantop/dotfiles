# Defined in /tmp/fish.mcutOu/deb.fish @ line 2
function deb
	ar -x $argv
    tar Jxv data.tar.*
    echo "You can install the deb with 'sudo cp -r'. Won't kill your system."
end
