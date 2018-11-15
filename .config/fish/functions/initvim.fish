# Defined in /tmp/fish.J0WeiJ/initvim.fish @ line 2
function initvim
	nvim ~/.config/nvim/init.vim
        nvim +PlugInstall +PlugUpdate +PlugUpgrade +PlugClean +q +q +q +q +q
end
