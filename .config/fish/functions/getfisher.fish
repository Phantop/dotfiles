# Defined in /tmp/fish.W9SYg1/getfisher.fish @ line 2
function getfisher
    curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
    fish -c fisher
    exec fish
end
