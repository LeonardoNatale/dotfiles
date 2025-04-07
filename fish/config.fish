# $PATH setup
fish_add_path /opt/homebrew/bin
fish_add_path ~/.local/bin

# Default ENV
set -x EDITOR nvim

# Pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

pyenv init - fish | source

# Prompt config
fish_vi_key_bindings

# Enable Starship prompt
starship init fish | source

# Aliases
alias fishconfig="nvim ~/.config/fish/config.fish"
alias lg='lazygit'
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

## Quick navigation
alias dotfiles="cd ~/dev/dotfiles"
alias monorepo="cd ~/carbonfact/carbonfact"
alias vera="cd ~/carbonfact/vera"
alias janco="cd ~/carbonfact/janco"

# Automatically switch node version based on .nvmrc
function nvm_use_on_dir_change --on-variable PWD
  if status is-interactive
    if test -e ./.nvmrc 
      nvm use --silent
    end
  end
end

#  Repeat previous command with administrator rights
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
