# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

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
# source $HOME/.zsh.d/powerlevel10k/powerlevel10k.zsh-theme

export PS1="%/ %# %(#.$)"

export PATH=$PATH:$HOME/.local/share/cargo/bin/:$HOME/.local/bin/:$HOME/.cargo/bin/:$HOME/go/bin/:/sbin
export EDITOR=nvim

export LANG="en_US.UTF-8"
# aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='exa --color=always'
alias info='info --vi-keys'
alias vim='nvim'
alias bcf='bluetoothctl connect FC:58:FA:B1:F7:3A'
alias pm='pulsemixer'
alias xba='xbacklight'
alias dosbox='dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf'
alias irssi='irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi'
# alias gpg='gpg --homedir $XDG_DATA_HOME/gnupg'

# neofetch
pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export APULSE_PLAYBACK_DEVICE=bluealsa:SRV=org.bluealsa,DEV=FC:58:FA:B1:F7:3A,PROFILE=a2dp

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PS1="%n %# "

source $XDG_CONFIG_HOME/zsh/plugins/fzf-tab/fzf-tab.zsh

gpgconf --kill gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export MANPAGER="dash -c \"col -b | nvim -MR -c 'set filetype=man' -\""
