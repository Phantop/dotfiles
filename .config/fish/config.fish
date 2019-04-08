# PATHS #
set -gx ANDROID_HOME $D/Installs/Android/sdk
set -gx fish_user_paths $D/Tools ~/.local/bin /usr/bin /usr/local/bin /bin /usr/sbin /usr/local/sbin /sbin $PLAN9/bin $ANDROID_HOME/platform-tools

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"
set -U Z_CMD "j"
