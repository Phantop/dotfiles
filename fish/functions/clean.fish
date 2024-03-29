function clean
    yay -Scc
    fc-cache -frvs
    rm -r ~/.cache/* ~/.wine/* ~/.local/pipx
    fish -c "j --purge"
    doas journalctl --vacuum-size=1K
    bleachbit -c (bleachbit -l|rg -v 'system.free_disk_space|system.memory')
    doas bleachbit -c (bleachbit -l|rg -v 'system.free_disk_space|system.memory')
end
