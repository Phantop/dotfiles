# PATHS #
set -gx D /mnt/LocalDiskD
set -gx ANDROID_HOME $D/Source/android/sdk
set -gx fish_user_paths ~/.local/bin $ANDROID_HOME/platform-tools /usr/bin /usr/local/bin /bin /usr/sbin /usr/local/sbin /sbin $PLAN9/bin
set -gx ENV .profile

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"

# AUTOJUMP #
source /usr/share/autojump/autojump.fish

# LOAD XRESOURCES #
xrdb ~/.Xresources
