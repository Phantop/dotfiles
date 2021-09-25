set -x EDITOR nvim
set -x PAGER most
set -x MANPAGER "nvim -c 'set ft=man' -"

test (hostname) = aperture && set D /mnt/LocalDiskD/

bind \eo 'ranger'
bind \ed 'ncdu'
bind \et 'tmux'
bind \ef 'fzf | xclip -selection clipboard'

fish_add_path -g ~/.local/bin $D/Games /usr/lib64/ccache/bin

starship init fish --print-full-init | source
source /usr/share/autojump/autojump.fish
