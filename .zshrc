# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git 
zsh-autosuggestions
tmux)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Alias
alias vi="nvim"
alias ls="exa"

# Starship zsh
eval "$(starship init zsh)"

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

## Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# GOLANG
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
alias cat="bat"


# Add bin cargo packages
export PATH=$PATH:/Users/aminedirhoussi/.cargo/bin

# Add Docker Desktop for Mac (docker)
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
# docker-compose
alias dcp="docker compose"
# bat theme
export BAT_THEME="Nord"
