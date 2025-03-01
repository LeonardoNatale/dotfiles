# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git poetry poetry-env zsh-autosuggestions zsh-nvm zsh-vi-mode)

export PATH="/Users/leonardonatale/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/leonardonatale/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/leonardonatale/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/leonardonatale/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/leonardonatale/google-cloud-sdk/completion.zsh.inc'; fi

# Starship https://starship.rs/
eval "$(starship init zsh)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

## Quick navigation
alias dotfiles="cd ~/dev/dotfiles"
alias couture="cd ~/carbonfact/couture"
alias kaya="cd ~/carbonfact/kaya"
alias monorepo="cd ~/carbonfact/carbonfact"
alias vera="cd ~/carbonfact/vera"
alias janco="cd ~/carbonfact/janco"


# bun completions
[ -s "/Users/leonardonatale/.bun/_bun" ] && source "/Users/leonardonatale/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
