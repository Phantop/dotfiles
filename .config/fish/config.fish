set fish_user_paths ~/.local/bin $D/Installs/bin /usr/lib/ccache/bin
set fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions
set Z_CMD "j"

test (hostname) = "aperture" && set -gx D /mnt/LocalDiskD

tty -s && starship init fish | source
