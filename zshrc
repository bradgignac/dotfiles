export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/zsh
export ZSH_THEME="avit"

plugins=(brew brew-cask git golang osx)

source $ZSH/oh-my-zsh.sh

export EDITOR='atom'
export GOPATH=$HOME/work/go
export PATH=$HOME/.dotfiles/bin:$GOPATH/bin:/usr/local/bin:$PATH
