# Environment variables
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/opt/neovide/target/debug"

# Vulkan stuff
export VULKAN_SDK=$HOME/vulkan/1.4.328.1/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export VK_ADD_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
export PKG_CONFIG_PATH=$VULKAN_SDK/share/pkgconfig:$VULKAN_SDK/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}

ZSH_THEME="bira"
zstyle ':omz:update' mode reminder  

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

alias v="nvim"
alias rip="rip --graveyard ~/.local/share/Trash"
alias gcm="git commit -m"
alias gap="git add -p"
alias cpc="xclip -sel c"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
