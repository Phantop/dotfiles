eval "$(starship init bash)"
source /usr/share/autojump/autojump.bash
source /usr/share/defaults/etc/profile

# Sensible Bash: https://github.com/mrzool/bash-sensible

## GENERAL OPTIONS ##

# Prevent file overwrite on stdout redirection
# Use `>|` to force redirection to an existing file
set -o noclobber

# Update window size after every command
shopt -s checkwinsize

# Automatically trim long paths in the prompt (requires Bash 4.x)
PROMPT_DIRTRIM=2

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

## SANE HISTORY DEFAULTS ##

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '
# Version: 0.2.2

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

## BETTER DIRECTORY NAVIGATION ##

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars

#aliases
alias cd='cd -P'
alias cpugov='sudo cpupower frequency-set -g performance'
alias dirdl='wget -r -k -p --no-parent --no-clobber -e robots=off'
alias dot='cd ~/.dotfiles'
alias D='cd $D'
alias ff='fd -HILi -Edosdevices -E.git'
alias g=git
alias giveme='s chown $USER'
alias hardinfo='inxi -SPARM -GCDN -v1 -xGCRS -Fxz'
alias l=ls
alias launcher='rofi -combi-modi "drun,run" -show combi -modi "combi,window"'
alias la='l -a'
alias off=shutdown
alias open=xdg-open
alias pagedl='wget -H -k -p --no-clobber -e robots=off'
alias re='systemctl reboot -i'
alias s=sudo
alias sumurder='s killall -s SIGKILL'
alias supath='s env "PATH=$PATH"'
alias se='s eopkg'
alias seh='se history'
alias ta='tmux attach -t'
alias up='se up --y'
alias vi=nvim
alias v=vi
alias ydl="youtube-dlc -ciw --write-sub --write-auto-sub --embed-subs --sub-lang=en -o '%(title)s.%(ext)s'"

#functions
dl(){
    [[ "$#" -ge 1 ]] && aria2c -c -x16 -s16 $argv || cd ~/Downloads/
}
qb(){
    qutebrowser $@ --target auto & disown
    rm -r VideoDecodeStats
}
