fish_add_path -g ~/.local/bin ~/Games /usr/lib64/ccache/bin

if tty -s
    set -x EDITOR nvim
    set -x PAGER most
    set -x MANPAGER 'nvim +Man!'
    set -x USE_CCACHE 1

    bind \eo 'nnn'
    bind \ed 'ncdu'
    bind \et 'tmux'
    bind \ef 'fzf | xclip -selection clipboard'

    starship init fish --print-full-init | source
    source /usr/share/autojump/autojump.fish
end
