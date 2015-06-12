# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jason/.zshrc'

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit
# End of lines added by compinstall

# setup the base $PATH using Mac OS X path_helper
if [[ -x /usr/libexec/path_helper ]]; then
    eval `/usr/libexec/path_helper -s`
fi

# prefer local versions of tools
export PATH="/usr/local/bin:${PATH}"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
