unsetopt BEEP

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

bindkey '^[[7~' beginning-of-line                               
bindkey '^[[H' beginning-of-line                                
bindkey '^[[8~' end-of-line                                     
bindkey '^[[F' end-of-line                                     

fpath=( "$HOME/.zsh.d/spaceship" "$HOME/.zsh.d/zsh-completions/src" $fpath )

autoload -U promptinit; promptinit
prompt spaceship

neofetch
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
