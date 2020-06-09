# PATHS #
set  fish_user_paths /usr/lib/ccache/bin $D/Tools/bin $D/Installs/appimage $ANDROID_HOME/platform-tools /sbin /bin /usr/sbin /usr/bin /run/media/$USER/disk*/bin 
set  fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

# PROGRAM SETTINGS #
set -gx EDITOR nvim
set -gx PAGER nvimpager
set -U Z_CMD "j"

set -x QT_QPA_PLATFORMTHEME gtk2

bax . ~/.nix-profile/etc/profile.d/nix.sh 2> /dev/null
