fpath=( "$HOME/.zsh.d" $fpath )

autoload -U promptinit; promptinit
prompt spaceship

neofetch
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
