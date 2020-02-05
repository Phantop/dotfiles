# PATHS #
set  fish_user_paths $D/Tools/bin $ANDROID_HOME/platform-tools /sbin /bin /usr/sbin /usr/bin /run/media/$USER/disk/jdk/bin $D/Installs/appimage
set  fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"
set -U Z_CMD "j"
