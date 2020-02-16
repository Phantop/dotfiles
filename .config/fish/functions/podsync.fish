# Defined in /tmp/fish.InZHQ7/podsync.fish @ line 2
function podsync
    tmux new-session -d "command podsync -c $D/Videos/YouTube/config.toml"
end
