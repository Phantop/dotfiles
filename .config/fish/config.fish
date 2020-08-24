test (hostname) = "aperture" && set -gx D /mnt/LocalDiskD || set -gx D ~

set fish_user_paths ~/.local/bin $D/Installs/bin /usr/lib/ccache/bin
set fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

tty -s && starship init fish | source; source /usr/share/autojump/autojump.fish
