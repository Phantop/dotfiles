function wallp
	set -l i (readlink -f $argv)
   gsettings set org.gnome.desktop.background picture-uri "file://$i"
end
