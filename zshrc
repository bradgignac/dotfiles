export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/zsh
export ZSH_THEME="spaceship"

export SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  # vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
export SPACESHIP_GIT_STATUS_SHOW="false"

plugins=(brew docker docker-compose golang osx terraform)

source $ZSH/oh-my-zsh.sh
eval "$(direnv hook zsh)"

export EDITOR='code -w'
export GOPATH=$HOME/work/go
export NVM_DIR="$HOME/.nvm"
export PATH=$HOME/.dotfiles/bin:$GOPATH/bin:/usr/local/bin:$PATH
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"

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

# Activate pyenv
eval "$(pyenv init -)"

# Activate chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
