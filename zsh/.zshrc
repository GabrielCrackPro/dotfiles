# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

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


# Custom Aliases

# Config files
alias zsh:config="nvim ~/.zshrc"
alias nvim:config="nvim ~/.config/nvim/"
alias tmux:config="nvim ~/.config/tmux/tmux.conf"
alias tmux:dracula:config="nvim ~/.config/tmux/plugins/tmux/scripts/dracula.sh"
alias hs:config="nvim ~/.hammerspoon/init.lua"
alias zsh:load="source ~/.zshrc"

# Utilities
alias dev="cd ~/dev"
alias express="express-cli-generator"
alias rmds="sudo python3 ~/dev/dsstore-deleter/main.py /"
alias cat="bat"
alias ls="lsd"
alias update="brew update && brew upgrade && brew cleanup --prune=all && brew autoremove"
alias eman="tldr"
alias spt="speed-test -v"
alias clh="history -c"
alias cra="npx create-react-app"
alias h="howdoi -c"
alias top="vtop"
alias vpn="openvpn ~/VPN/vpnbook-pl226-tcp443.ovpn"

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

alias tmux:load="tmux source ~/.config/tmux/tmux.conf && echo ' tmux config reloaded'"

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
echo -e "$c[green][  ] Last login - $c[reset]${LAST_LOGIN}"

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

export COWFILES="/opt/homebrew/Cellar/cowsay/3.04_1/share/cows" # Cowsay cows path
export ESLINTCONF="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/.eslintrc.js" # EsLint config file url
export LICENSETEMP="https://raw.githubusercontent.com/GabrielCrackPro/dotfiles/main/LICENSE_template" # License template url

# Create dev working directory function
function mkd(){
mkdir -p $1/public 2>/dev/null
if [ -d "$1/public" ];then
  html_content='
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./style.css">
</head>
<body>
<script src="./app.js"></script>
</body>
</html>
'
  touch $1/public/index.html
	echo $html_content > $1/public/index.html
	touch $1/public/style.css 2>/dev/null
	touch $1/public/app.js 2>/dev/null
	cd $1
  npm init -y 1>/dev/null
  npm i eslint -D 1>/dev/null
  wget -q $ESLINTCONF
  wget -q $LICENSETEMP
  mv LICENSE_template LICENSE
  npx gitignore node 1>/dev/null
	echo "$c[green]Directory $1 created successfully$c[reset]"
else
	echo "$c[red]Error creating directory $1 $c[reset]"
fi
}

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

setopt aliases

eval "$(starship init zsh)"

export PATH=$PATH:/Users/gabrielvr/.spicetify

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

