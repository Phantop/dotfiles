# PATHS #
if test (hostname) = aperture
    set -Ux D /mnt/LocalDiskD
end

set -gx ANDROID_HOME $D/Installs/Android/sdk
set -gx fish_user_paths $D/Tools ~/.local/bin /usr/bin /usr/local/bin /bin /usr/sbin /usr/local/sbin /sbin $PLAN9/bin $ANDROID_HOME/platform-tools
set -gx ENV .profile
set -gx FFF_CD_FILE ~/.fff_d

set -g fisher_path ~/.config/fish/fisher
set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]
for i in $fisher_path/conf.d/*
    builtin source $i
end

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER "nvim -c 'set ft=man' -"
set -U Z_CMD "j"

# LOAD XRESOURCES #
xrdb ~/.Xresources

# MULTIMC INSTANCES #
for i in (ls $D/Games/Minecraft/Game/instances)
    alias $i="minecraft -l $i"
end
