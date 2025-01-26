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
alias ls="lsd"
alias update="brew update && brew upgrade && brew cleanup --prune=all && brew autoremove"
alias clh="history -c"
alias rmds="sudo python3 ~/dev/scripts/dsstore-killer.py /"
alias tmux:start="tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}"
alias tmux:dev="sh ~/dev/scripts/tmux_dev.sh"


# Git aliases

alias gcl="git clone"
alias ga="git add ."
alias gs="git status -s"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"
alias glo="git log --oneline"

alias gsd="git checkout develop" # chamge to develop branch
alias gsm="git checkout main" # change to main branch

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

alias -g -- --help='--help 2>&1 | bat --language=help' # Use bat as --help viewer

# Bat replacements

batdiff() {
  diff -u "$1" "$2" | bat -l diff
}

alias cat="bat --paging=never"
alias less="bat --paging=always"
alias tail="bat --paging=never --line-range :100"
alias head="bat --paging=never --line-range 1:100"
alias find="find | bat -l plain"
alias diff="batdiff"


git config --global pager.diff "bat --paging=always --decorations=always"
git config --global pager.show "bat --paging=always --decorations=always"
git config --global pager.log "bat --paging=always --decorations=always"
git config --global pager.branch "bat --paging=always --decorations=always"

# Custom commands at launch

clear
neofetch


source /Users/gabrielvr/zsh-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /Users/gabrielvr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load oh my posh config
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/catppuccin_mocha.omp.json)"

# Config env variables

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"


export BAT_THEME="Catppuccin Mocha"

export MANPAGER="sh -c 'col -bx | bat -l man --paging=always'"


export LAZYGIT_CONFIG_DIR="~/Library/Application Support/lazygit"

setopt aliases




export PATH=$PATH:/Users/gabrielvr/.spicetify

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)


