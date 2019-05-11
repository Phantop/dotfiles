# PATHS #
set -gx ANDROID_HOME $D/Installs/Android/sdk
set  fish_user_paths $D/Tools $ANDROID_HOME/platform-tools /sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin
set  fish_function_path $D/Games/Minecraft/Game/functions $fish_function_path

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"
set -U Z_CMD "j"
