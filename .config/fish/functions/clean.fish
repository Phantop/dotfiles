# Defined in /tmp/fish.n1quHQ/clean.fish @ line 2
function clean
    up
    fc-cache -f -v
    s sync
    j -c
    se clean -y
    se dc -y
    se rmo -y
    se rdb -y
    s journalctl --vacuum-size=1K
    bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission|system.memory|firefox')
    s bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission|system.memory|firefox')
    rm -r ~/.cache/*
    rm -r ~/.nv/*
    rm -r ~/.local/share/nvim/swap/
    rm -r $D/Games/Emulators/*/canary
    rm -r $D/Games/Emulators/*/*og*
    s solbuild delete-cache
    s sync
end
