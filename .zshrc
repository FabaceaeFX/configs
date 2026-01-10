# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export APCA_API_KEY_ID="AKSYUJVRIWBQ3OA4N2PDYKLXDL"
export APCA_API_SECRET_KEY="5RZXBZB67TxMqNi8bZEYkQoTL86rb55kVBmUMeoaD9dJ"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"
unsetopt correct_all
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Auto-start tmux when opening an interactive shell
if [[ -z "$TMUX" && -n "$DISPLAY" ]]; then
  exec tmux
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="$HOME/.zshrc"
alias ohmyzsh="$HOME/.oh-my-zsh"
alias ipython='python3 -m IPython'
alias configs='/usr/bin/git --git-dir=$HOME/configs/ --work-tree=$HOME'
alias uv-activate="source .venv/bin/activate"
alias uv-deactivate="deactivate"
alias jupytext-r='jupytext --set-formats ipynb,R:spin'   

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH":"$HOME/.local/scripts/"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
[[ -f ~/.config/tmux-sessionizer/tmux-sessionizer ]] && \
  ln -sf ~/.config/tmux-sessionizer/tmux-sessionizer ~/.local/bin/tmux-sessionizer   
# Note: zsh uses bindkey instead of bind
bindkey -s '^f' 'tmux-sessionizer\n'
export PATH="$HOME/bin:$PATH"
