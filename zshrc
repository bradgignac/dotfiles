export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/zsh
export ZSH_THEME="avit"

plugins=(brew brew-cask docker docker-compose golang osx terraform)

source $ZSH/oh-my-zsh.sh
eval "$(direnv hook zsh)"

export EDITOR='atom -w'
export GOPATH=$HOME/work/go
export NVM_DIR="$HOME/.nvm"
export PATH=$HOME/.dotfiles/bin:$GOPATH/bin:/usr/local/bin:$PATH
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export SFT_DEBUG=false

# added by travis gem
[ -f /Users/bradgignac/.travis/travis.sh ] && source /Users/bradgignac/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/src/google-cloud-sdk/path.zsh.inc ]; then
  source '/usr/local/src/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/src/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/src/google-cloud-sdk/completion.zsh.inc'
fi

# Activate nvm
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  . "/usr/local/opt/nvm/nvm.sh"
fi
