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
# Abbreviations
abbr -a ls "eza --icons"
abbr -a ll "eza -l --icons --git"
abbr -a la "eza -la --icons --git"
abbr -a lt "eza -T --icons"
abbr -a l "eza -l --icons"
abbr -a fishconfig "nvim ~/.config/fish/config.fish"
abbr -a lg lazygit
# Keep as alias — complex argument substitution
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
## Quick navigation
abbr -a dotfiles "cd ~/dev/dotfiles"
abbr -a monorepo "cd ~/carbonfact/carbonfact"
abbr -a vera "cd ~/carbonfact/carbonfact/vera"
abbr -a janco "cd ~/carbonfact/janco"
# automatically switch node version based on .nvmrc
set -U nvm_default_version v22.14.0
function nvm_use_on_dir_change --on-variable PWD
    if test -e ./.nvmrc 
      nvm use --silent
      echo "Using $nvm_current_version from .nvmrc"
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
# Provides the ability to change the current working directory when exiting Yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
	    builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
# zoxide
zoxide init fish | source

source ~/.safe-chain/scripts/init-fish.fish # Safe-chain Fish initialization script