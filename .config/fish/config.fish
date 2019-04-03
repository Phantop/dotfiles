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
source /usr/share/autojump/autojump.fish

# LOAD XRESOURCES #
xrdb ~/.Xresources

# QUTEBROWSER QUICKMARKS #
for i in (cat ~/.config/qutebrowser/quickmarks)
    function (echo $i| awk '{print $1;}') -V i
        qb (echo $i| awk '{print $2;}')
    end
end

# THE FUCK #
thefuck --alias | source

# MULTIMC INSTANCES #
for i in (ls $D/Games/Minecraft/Game/instances/)
    function (basename $i | tr '[:upper:]' '[:lower:]') -V i
        minecraft -l (basename $i)
    end
end
