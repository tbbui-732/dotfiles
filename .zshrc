# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ///--- INIT ---///
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ///--- THEME ---///
#ZSH_THEME="gnzh"

# User configuration (for pure...)
ZSH_THEME=""
fpath+=("$(brew --prefix)/share/zsh/site-functions")
fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure

zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:path color cyan

# ///--- SETTINGS ---///
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="false"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Auto update every three days
zstyle ':omz:update' frequency 3

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ///--- ALIASES ---///
alias -g vim="nvim"
alias -g v="nvim"
alias school="cd ~/Documents/uconn/S23/"
alias -g p="python3"
alias -g sp="spotify"

# quick config changes
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"
alias nvimconfigs="cd ~/.config/nvim/lua/bao/"

# file exploring
alias ls="exa"
alias ll="exa -alh"
alias tree="exa --tree"
alias cat="bat"

# git
alias gap="git add --patch"
alias gcm="git commit -m"
alias gc="git commit"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

# Setting the paths for brew formulaes
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib
