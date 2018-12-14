# MAIN DISK #
set -gx D /mnt/LocalDiskD

# SESSION MANAGER #
switch (tty)
         case "/dev/tty1"
             tbsm
     end

# PATHS #
set -gx ANDROID_HOME $D/Source/android/sdk
set -gx fish_user_paths ~/.local/bin $ANDROID_HOME/platform-tools /usr/local/bin /usr/sbin /sbin /usr/local/sbin

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx FZF_DEFAULT_COMMAND 'ff'
set -gx PAGER "nvim -c 'set ft=man' -"

# AUTOJUMP #
source /usr/share/autojump/autojump.fish

# LOAD XRESOURCES #
xrdb ~/.Xresources
