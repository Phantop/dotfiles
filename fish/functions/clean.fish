function clean
    fc-cache -frvs
    fish -c "j --purge"
    rm -r ~/.cache/* ~/.wine/* ~/.local/pipx
    yay -Scc
    bleachbit -c (bleachbit -l|rg -v 'system.free_disk_space|system.memory')
    s bleachbit -c (bleachbit -l|rg -v 'system.free_disk_space|system.memory')
    s journalctl --vacuum-size=1K
end
