set -x EDITOR nvim
set -x PAGER most
set -x MANPAGER "nvim -c 'set ft=man' -"
starship init fish | source
source /usr/share/autojump/autojump.fish
