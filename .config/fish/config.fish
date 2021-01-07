test (hostname) = aperture && set -gx D /mnt/LocalDiskD || set -gx D ~

set fish_user_paths ~/.local/bin /usr/lib/ccache/bin
export EDITOR=nvim PAGER=most

tty -s && starship init fish | source && source /usr/share/autojump/autojump.fish
