set -x EDITOR nvim
set -x PAGER most
set -x MANPAGER "nvim -c 'set ft=man' -"

fish_add_path -g ~/.local/bin
starship init fish | source
source /usr/share/autojump/autojump.fish
