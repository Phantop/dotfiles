function wallp --wraps=realpath
    gsettings set org.gnome.desktop.background picture-uri file://(realpath $argv)
end
