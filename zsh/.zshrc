export ZSH="/Users/gabrielvr/.oh-my-zsh/"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"


ZSH_DISABLE_COMPFIX=true

plugins=(
    git 
    colors
    zsh-autosuggestions
    macos
    autojump
    sudo
    z
)

source $ZSH/oh-my-zsh.sh

export LANG=es_ES.UTF-8

# Custom aliases

# View config files
alias zsh:view="bat ~/.zshrc"
alias nvim:view="bat ~/.config/nvim/"
alias tmux:view="bat ~/.config/tmux/tmux.conf"
alias tmux:dracula:view="bat ~/.config/tmux/plugins/tmux/scripts/dracula.sh"
alias posh:view="bat ~/.config/oh-my-posh/themes/custom.json"

# Edit config files
alias zsh:config="nvim ~/.zshrc"
alias nvim:config="nvim ~/.config/nvim/"
alias tmux:config="nvim ~/.config/tmux/tmux.conf"
alias tmux:theme:config="nvim ~/.config/tmux/plugins/tmux/scripts/dracula.sh"
alias posh:config="nvim ~/.config/oh-my-posh/themes/custom.json"

alias zsh:load="source ~/.zshrc" # Reload zsh config

# Utilities
alias dev="cd ~/dev"
alias cat="bat"
alias ls="lsd"
alias cd=z
alias update="brew update && brew upgrade && brew cleanup --prune=all && brew autoremove"
alias clh="history -c"
alias rmds="sudo python3 ~/dev/scripts/dsstore-killer.py /"
alias tmux:start="tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}"
alias tmux:dev="sh ~/dev/scripts/tmux_dev.sh"
alias browser="open -a 'Arc'"


# Git aliases

alias gcl="git clone"
alias ga="git add ."
alias gs="git status -s"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"

# Spotify aliases

alias spp="spotify play"
alias sppa="spotify pause"
alias spn="spotify next"
alias sppr="spotify prev"
alias spv="spotify volume"
alias spm="spotify mute"
alias spr="spotify toggle repeat"
alias sps="spotify toggle shuffle"
alias spst="spotify status"

# Tmux aliases
alias tmux:install="~/.config/tmux/plugins/tpm/bin/install_plugins" # TPM install
alias tmux:update="~/.config/tmux/plugins/tpm/bin/update_plugins all" # TPM update
alias tmux:clean="~/.config/tmux/plugins/tpm/bin/clean_plugins" # TPM uninstall

alias tmux:load="tmux source ~/.config/tmux/tmux.conf && echo ' tmux config reloaded'"

# Nvim aliases

alias vim="nvim"
alias v="nvim"
alias v.="nvim ."

alias cld="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder && echo 'DNS Cache cleaned'" # Clear DNS cache

# Custom commands at launch

clear
neofetch

source /Users/gabrielvr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load oh my posh config
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/custom.json)"

# Custom env variables

export COWFILES="/opt/homebrew/Cellar/cowsay/3.04_1/share/cows" # Cowsay cows path
export ESLINTJS="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/eslint/js/.eslintrc.js" # EsLint JS config file url
export ESLINTTS="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/eslint/ts/.eslintrc.json" # EsLint TS config file url
export LICENSETEMP="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/LICENSE_template" # License template url

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#265c6f,bold"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

setopt aliases


export PATH=$PATH:/Users/gabrielvr/.spicetify

source /Users/gabrielvr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)
