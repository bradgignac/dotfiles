export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/zsh
export ZSH_THEME="avit"

plugins=(brew brew-cask docker docker-compose golang osx terraform)

source $ZSH/oh-my-zsh.sh

export EDITOR='atom -w'
export GOPATH=$HOME/work/go
export PATH=$HOME/.dotfiles/bin:$GOPATH/bin:/usr/local/bin:$PATH
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export SFT_DEBUG=false

# added by travis gem
[ -f /Users/bradgignac/.travis/travis.sh ] && source /Users/bradgignac/.travis/travis.sh
