# ////////////////////
# /// --- INIT --- ///
# ////////////////////
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# //////////////////////
# /// --- THEME --- ////
# //////////////////////
ZSH_THEME=""

# ////////////////////////
# /// --- SETTINGS --- ///
# ////////////////////////
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="false"

# AUTO UPDATE BEHAVIOR:
# Auto update every three days
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 5

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='vim'
fi


# /////////////////////
# ///--- ALIASES ---///
# /////////////////////
alias v="nvim"
alias p="python3"
alias gap="git add --patch"
alias gcm="git commit -m"
alias gc="git commit"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"
