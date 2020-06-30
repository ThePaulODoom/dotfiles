unsetopt BEEP

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# set vi mode
bindkey -v

# set sytnax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PS1="%/ %# %(#.$)"

export PATH=$PATH:$HOME/.cargo/bin/:$HOME/.local/bin/

# aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='exa --color=always'
alias info='info --vi-keys'
alias vim='nvim'

neofetch

