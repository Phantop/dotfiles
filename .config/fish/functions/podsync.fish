function podsync
    cd $D/Videos/YouTube/
    ./clean
    tmux new -s 1 -d "command podsync -c $D/Videos/YouTube/config.toml"
end
