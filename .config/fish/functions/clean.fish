# Defined in /tmp/fish.ESAzKX/clean.fish @ line 2
function clean
    s sync
    j -c
    fc-cache -f -v
    se clean -y
    se dc -y
    se rmo -y
    se rdb -y
    s journalctl --vacuum-size=1K
    bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission|system.memory')
    s bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission|system.memory')
    rm -r ~/.cache/*
    rm -r ~/.nv/*
    rm -r ~/.local/share/nvim/swap/
    rm -r $D/Games/Emulators/*/canary
    rm -r $D/Games/Emulators/*/*og*
    s sync
end
