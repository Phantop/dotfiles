# Defined in /tmp/fish.UKii9e/wallp.fish @ line 2
function wallp --wraps=readlink
    gsettings set org.gnome.desktop.background picture-uri file://(readlink -f $argv)
end
