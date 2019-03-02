# Defined in /tmp/fish.2nXMPf/wallp.fish @ line 1
function wallp
	set -l i (readlink -f $argv)
    gsettings set org.gnome.desktop.background picture-uri "file://$i"
end
