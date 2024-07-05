abbr !. --position anywhere -f history_find -r '^!.*'
abbr !! --position anywhere -f history_last
abbr do ''
abbr done end
bind \ed 'ncdu'
bind \ef '_fzf_wrapper | clip'
bind \e\co 'open (_fzf_wrapper)'
printf "\e[5 q"
