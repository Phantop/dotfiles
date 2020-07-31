# PATHS #
set fish_user_paths /usr/lib/ccache/bin $D/Installs/bin /sbin /bin /usr/sbin /usr/bin
set fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER nvimpager
set -U Z_CMD "j"

set -x QT_QPA_PLATFORMTHEME gtk2

starship init fish | source
