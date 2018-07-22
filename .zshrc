# Path to your oh-my-zsh installation.
export ZSH="/Users/cashton/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# User configuration
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# VIM 
# Use Neovim as "preferred editor"
export VISUAL=nvim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

# vim config
export VIMCONFIG=~/.config/nvim
export VIMDATA=/.local/share/nvim

# export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_COMMAND='git ls-files'

# TMUX
# tmux aliases
alias tm=tmux

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Golang settings
export GOPATH="$HOME/code/go"
export PATH="$HOME/code/go/bin:$PATH"
