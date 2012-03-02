setopt appendhistory
setopt nobeep

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit
compinit

# setup the base $PATH using Mac OS X path_helper
if [[ -x /usr/libexec/path_helper ]]; then
	eval `/usr/libexec/path_helper -s`
fi
# prefer homebrew versions of tools
export PATH="/usr/local/bin:${PATH}"
