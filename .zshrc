setopt appendhistory
setopt nobeep

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit
compinit
