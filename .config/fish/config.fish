# PATHS #
if test (hostname) = aperture
    set -Ux D /mnt/LocalDiskD
end
set -gx ANDROID_HOME $D/Installs/Android/sdk
set -gx fish_user_paths $D/Tools ~/.local/bin /usr/bin /usr/local/bin /bin /usr/sbin /usr/local/sbin /sbin $PLAN9/bin $ANDROID_HOME/platform-tools
set -gx ENV .profile
set -gx FFF_CD_FILE ~/.fff_d

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"

# AUTOJUMP #
alias j=z

# LOAD XRESOURCES #
xrdb ~/.Xresources

# MULTIMC INSTANCES #
for i in $D/Games/Minecraft/Game/instances/*
    set i (basename $i)
    alias $i="minecraft -l $i"
end
