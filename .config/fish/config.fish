# PATHS #
set -gx ANDROID_HOME $D/Installs/Android/sdk
set -gx fish_user_paths $D/Tools $ANDROID_HOME/platform-tools /sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"
set -U Z_CMD "j"
