plugins=(
  autojump
  brew 
  chucknorris
  copydir
  copyfile
  docker
  docker-compose
  extract
  fd
  fzf
  git
  git-extras
  git-flow
  golang
  helm
  history
  httpie
  iterm2 
  jsontools
  kubectl
  minikube
  mvn
  osx
  taskwarrior
  tmux
  zsh-apple-touchbar
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z	
)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# source functions
source ~/.zsh/functions

# export customer path
export PATH="/Users/andreas/bin:$PATH:/usr/local/Cellar/openvpn/2.4.7_1/sbin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Aliases
source ~/.zsh/aliases

# Kafka
source ~/.zsh/kafka-zsh-completions/kafka.zsh

eval $(thefuck --alias)
