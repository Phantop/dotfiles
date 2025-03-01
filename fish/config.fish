abbr !. --position anywhere -f history_find -r '^!.*'
abbr !! --position anywhere -f history_last
abbr do ''
abbr done end
bind alt-d ncdu
bind alt-f '_fzf_wrapper | clip'
bind ctrl-alt-o 'open (_fzf_wrapper)'
bind ctrl-c __fish_cancel_commandline
printf "\e[5 q"
