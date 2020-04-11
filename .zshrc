fpath=( "$HOME/.zfunctions" "/usr/share/zsh/plugins/zsh-completions/src" $fpath )

autoload -U promptinit; promptinit
prompt spaceship

neofetch
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
