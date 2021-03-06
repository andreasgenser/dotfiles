# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
 # zsh-apple-touchbar
  zsh-autosuggestions
  zsh-syntax-highlighting
 # zsh-z	
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
for file in ~/.zsh/functions/*; do
   source "$file"
done

# export customer path
export PATH="/Users/andreas/bin:$PATH:/usr/local/Cellar/openvpn/2.4.7_1/sbin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Aliases
source ~/.zsh/aliases

# Kafka
source ~/.zsh/kafka-zsh-completions/kafka.zsh

eval $(thefuck --alias)

# use for navigation with option key
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
#bindkey '^[^?' backward-kill-word

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# LKW Walter Environment variables
if test -f "~/Development/lkwww/git-partner/lkww-confidential/doc/misc/env.sh"; then
  source ~/Development/lkwww/git-partner/lkww-confidential/doc/misc/env.sh
fi

# Kafka component env
if test -f "~/Development/lkww/git-partner/support-scripts/healthcheck/env.sh"; then
  source ~/Development/lkww/git-partner/support-scripts/healthcheck/env.sh
fi

