function rebind
    for i in ~/.dotfiles/dconf/*
        dconf reset -f (basename "$i" | tr : /)
        sed -z 's/,\n/, /g' $i | dconf load $(basename "$i" | tr : /)
    end
end
