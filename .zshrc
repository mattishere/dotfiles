# -----
# Lines configured by zsh-newuser-install
# -----

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# -----
# Aliases
# -----

alias branches="git branch -a"
alias branch="git checkout"
alias ls='ls --color=auto'
alias yay='echo "Yay is gone.. Use paru :*("'
alias nf='neofetch'


# -----
# Plugins
# -----

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


autoload -U compinit && compinit -u

# -----
# Starship prompt
# -----

eval "$(starship init zsh)"
