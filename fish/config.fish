fish_add_path -g ~/.appdwarf/{,apps/bin} ~/{.dotfiles,.local,,Games}/bin /usr/lib64/ccache/bin
export EDITOR=nvim MANPAGER='nvim +Man!' USE_CCACHE=1
export QT_QPA_PLATFORMTHEME=gtk2

set fish_greeting
set fish_color_command --bold
set fish_color_comment red
set fish_color_end brmagenta
set fish_color_error brred
set fish_color_escape 'bryellow' '--bold'
set fish_color_match --background=brblue
set fish_color_operator bryellow
set fish_color_param cyan
set fish_color_quote yellow
set fish_color_redirection brblue
set fish_color_status red
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_prefix 'white' '--bold' '--underline'

bind \ed 'ncdu'
bind \ef '_fzf_wrapper | clip'
bind \e\co 'open (_fzf_wrapper)'

abbr !. --position anywhere -f history_find -r '^!.*'
abbr !! --position anywhere -f history_last
abbr do ''
abbr done end

printf "\e[5 q"
