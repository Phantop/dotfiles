set -x EDITOR nvim
set -x PAGER most
set -x MANPAGER "nvim -c 'set ft=man' -"

test (hostname) = aperture && set D /mnt/LocalDiskD/

fish_add_path -g ~/.local/bin /usr/lib64/ccache/bin
starship init fish --print-full-init | source
source /usr/share/autojump/autojump.fish
