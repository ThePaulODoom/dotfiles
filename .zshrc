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

fpath=( "$HOME/.zsh.d/spaceship" "$HOME/.zsh.d/zsh-completions/src" $fpath )
export PS1="%/ %# %(#.$)"

neofetch
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
