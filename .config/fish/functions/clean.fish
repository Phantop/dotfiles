# Defined in /tmp/fish.XLdbAh/clean.fish @ line 2
function clean
	s printf \ 
    font
    se clean -y
    se dc -y
    se rmo -y
    se rdb -y
    s journalctl --vacuum-size=1K
    bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission')
    s bleachbit -c (bleachbit -l|grep -Ev 'system.free_disk_space|transmission')
    rm -r ~/.cache/*
    rm -r ~/.nv/*
    rm -r ~/.local/share/nvim/swap/
    rm -r $D/Games/Emulators/*/canary
end
