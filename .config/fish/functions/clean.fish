# Defined in /tmp/fish.cXbpuG/clean.fish @ line 2
function clean
	s printf \ 
    updatefonts
    se clean -y
    se dc -y
    se rmo -y
    se rdb -y
    s journalctl --vacuum-size=1K
    bleachbit -c (bleachbit -l|grep -v system.free_disk_space | grep -v transmission)
    s bleachbit -c (bleachbit -l|grep -v system.free_disk_space | grep -v transmission)
    rm -r ~/.cache/*
    rm -r ~/.local/share/nvim/swap/
end
