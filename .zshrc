# Uncomment if default shell is bash
# export PATH=$HOME/bin:/usr/local/bin:$PATH
 
# ////////////////////
# /// --- INIT --- ///
# ////////////////////
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# //////////////////////
# /// --- THEME --- ////
# //////////////////////
ZSH_THEME=""

# Uncomment to use PURE
fpath+=("$(brew --prefix)/share/zsh/site-functions")
fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure

zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:path color cyan

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
zstyle ':omz:update' frequency 3

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

# ////////////////////
# /// --- PATH --- ///
# ////////////////////

# brew
if [ -d "$(brew --prefix)/opt/grep/libexec/gnubin" ]; then
  PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
fi

# brew formulaes
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# /////////////////////
# ///--- ALIASES ---///
# /////////////////////

# aliased "r" to trigger nnn file manager
r() {
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # The backslash allows one to alias r to nnn if desired without making an
    # infinitely recursive alias
    \nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

# general aliases
alias v="nvim"
alias p="python3"

# quick config changes
alias kittyconfig="cd ~/.config/kitty/"
alias nvimconfig="cd ~/.config/nvim/lua/bao/"

# file exploring
# alias ls="exa"
# alias ll="exa -alh"
# alias tree="exa --tree"
# alias cat="bat"

# git
alias gap="git add --patch"
alias gcm="git commit -m"
alias gc="git commit"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

# only open HTML files into Chrome
custom_open() {
  if [[ $# -eq 1 && $1 == *.html ]]; then 
    open -a "Google Chrome" "$1"
  else
    open "$@"
  fi
}

alias op='custom_open'


# ssh settings
alias s="kitty +kitten ssh"

# Nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
