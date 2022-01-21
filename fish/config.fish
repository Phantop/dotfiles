fish_add_path -g ~/.local/bin ~/Games /usr/lib64/ccache/bin

if tty -s
    set -x EDITOR nvim
    set -x PAGER most
    set -x MANPAGER 'nvim +Man!'
    set -x USE_CCACHE 1

    set fish_greeting
    set -U fish_features 3.0

    set fish_color_command --bold
    set fish_color_comment red
    set fish_color_end brmagenta
    set fish_color_error brred
    set fish_color_escape 'bryellow'  '--bold'
    set fish_color_match --background=brblue
    set fish_color_operator bryellow
    set fish_color_param cyan
    set fish_color_quote yellow
    set fish_color_redirection brblue
    set fish_color_status red
    set fish_color_user brgreen
    set fish_color_valid_path --underline
    set fish_pager_color_prefix 'white'  '--bold'  '--underline'

    bind \eo 'nnn'
    bind \ed 'ncdu'
    bind \et 'tmux'
    bind \ef 'fzf | xclip -selection clipboard'

    starship init fish --print-full-init | source
    source /usr/share/autojump/autojump.fish
end
