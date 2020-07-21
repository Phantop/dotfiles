# Defined in /tmp/fish.n3BGCP/getfisher.fish @ line 1
function getfisher
    curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
    fisher
end
