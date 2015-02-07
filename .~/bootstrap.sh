#!/usr/bin/env bash
set -e

git config core.worktree ${HOME}

[ -e /usr/local/bin/brew ] || ./install-homebrew.sh

brew doctor

taps=(
    caskroom/fonts
    )
brew tap "${taps[@]}"

brews=(
    bash-completion
    caskroom/cask/brew-cask
    git
    smartmontools
    the_silver_searcher
    )
brew install "${brews[@]}"

casks=(
    1password
    dropbox
    google-chrome
    macvim
    moom
    spotify
    font-fira-sans
    font-source-code-pro
    )
brew cask install "${casks[@]}"
