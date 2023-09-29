export ZSH="/Users/gabrielvr/.oh-my-zsh"

ZSH_THEME="dracula"

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
    zsh-peco-history
    zsh-autosuggestions
    zsh-syntax-highlighting
    macos
    autojump
    sudo
)

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=es_ES.UTF-8

# Prompt colors

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color


# Custom aliases


# View config files
alias zsh:view="bat ~/.zshrc"
alias nvim:view="bat ~/.config/nvim/"
alias tmux:view="bat ~/.config/tmux/tmux.conf"
alias tmux:dracula:view="bat ~/.config/tmux/plugins/tmux/scripts/dracula.sh"
alias hs:view="bat ~/.hammerspoon/init.lua"

# Edit config files
alias zsh:config="nvim ~/.zshrc"
alias nvim:config="nvim ~/.config/nvim/"
alias tmux:config="nvim ~/.config/tmux/tmux.conf"
alias tmux:dracula:config="nvim ~/.config/tmux/plugins/tmux/scripts/dracula.sh"
alias hs:config="nvim ~/.hammerspoon/init.lua"


alias zsh:load="source ~/.zshrc" # Reload zsh config

# Utilities
alias dev="cd ~/dev"
alias rmds="sudo python3 ~/dev/dsstore-deleter/main.py /"
alias cat="bat"
alias ls="lsd"
alias update="brew update && brew upgrade && brew cleanup --prune=all && brew autoremove"
alias eman="tldr"
alias clh="history -c"
alias vite="npm init vite@latest"
alias h="howdoi -c"
alias top="vtop"
alias wget="aria2c"
alias pt="periodic-table-cli"

# Git aliases

alias gcl="git clone"
alias ga="git add ."
alias gs="git status -s"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"

# Spotify aliases

alias sp="spotify"
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

alias cld="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo 'DNS Cache cleaned'" # Clear DNS cache


# If z.sh location changes update this

. ~/bin_custom/z.sh   # Load z directory jumper

# Custom commands at launch

clear

# Display last login info

LAST_LOGIN="$(last -tty gabrielvr | head -n 1 | cut -b 38-53)"
echo -e "$c[green][ 󰍂 ] Last login - $c[reset]${LAST_LOGIN}"

# Display private IP

IP="$(ifconfig | grep "inet " | tr " " ":" | cut -d: -f2 | tail -n1)"
echo -e "$c[green][  ] Private IP - $c[reset]${IP}"

# Display weather

WEATHER="$(ansiweather -l Elche,ES -a false -w false -h false -H false -p false -i false | cut -b 13-25)"
echo -e "$c[green][  ] Weather - $c[reset]${WEATHER}"

# Display fortune and cowsay

COWSAY="$(fortune -s | cowsay -f tux)"
echo -e "$c[green]${COWSAY}$c[reset]"
echo

source /Users/gabrielvr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# setopt prompt_subst

# Display time 

RPROMPT="%{$c[green]%}( %D{%H:%M:%S} )%{$c[reset]%}"


# Custom env variables

export BAT_THEME=Dracula

export ANDORID_SDK_ROOT="~/Library/Android/sdk"

export COWFILES="/opt/homebrew/Cellar/cowsay/3.04_1/share/cows" # Cowsay cows path
export ESLINTJS="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/eslint/js/.eslintrc.js" # EsLint JS config file url
export ESLINTTS="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/eslint/ts/.eslintrc.json" # EsLint TS config file url
export LICENSETEMP="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/LICENSE_template" # License template url
export CUSTOM_BIN="/Users/gabrielvr/bin_custom"

export PATH="$PATH:/Users/gabrielvr/.local/share/gem/ruby/2.6.0/bin"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export CAPACITOR_ANDROID_STUDIO_PATH=/Users/gabrielvr/Library/Application\Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/213.7172.25.2113.9123335/Android\Studio.app/Contents/MacOS/studio
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Add flutter to path
export PATH="$PATH:/Users/gabrielvr/flutter/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

setopt aliases

eval "$(starship init zsh)"

export PATH=$PATH:/Users/gabrielvr/.spicetify

function rmk(){
	scrub -p dod $1
	shred -zun 10 -v $1
}

# Create projects aliases

# Load functions
source $CUSTOM_BIN/create-react-ts.sh
source $CUSTOM_BIN/create-flutter-app.sh

alias crt="create-react-ts" # Create React with TS project
alias cfa="create-flutter-app" # Create Flutter App

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

