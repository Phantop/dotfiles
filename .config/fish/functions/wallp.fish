function wallp -w readlink
    gsettings set org.gnome.desktop.background picture-uri "file://(readlink -f $argv)"
end
