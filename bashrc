#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make cd do cd and ls
cd() { builtin cd "$@" && ls --color=auto; }

PS1='$ '

# Default aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# Custom aliases
alias mp='mpv --loop-file=inf'
alias v='vim'
alias q='qalc'
alias l='ls'
alias s='ls'
alias sl='ls'
alias c='clear'
alias du='du -sh'
alias z='zathura 2>/dev/null'

# Custom utilities
alias l20="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"
