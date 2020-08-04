# PATHS #
set fish_user_paths ~/.local/bin $D/Installs/bin /usr/lib/ccache/bin /usr/bin /usr/sbin /sbin /bin 
set fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER nvimpager
set -U Z_CMD "j"

set -x QT_QPA_PLATFORMTHEME gtk2

starship init fish | source
