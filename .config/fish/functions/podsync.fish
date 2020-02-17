# Defined in /tmp/fish.Y6YBXL/podsync.fish @ line 2
function podsync
    tmux new -s 1 -d "command podsync -c $D/Videos/YouTube/config.toml"
end
