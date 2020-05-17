#!/bin/sh
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

echo $XDG_DATA_HOME

### Rust cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

### ZSH
export ZDOTDIR="$HOME/.config/zsh"

### Xfiles
export XAUTHORITY="$XDG_RUNTIME_DIR/Xfiles"
export XINITRC ="$XDG_RUNTIME_DIR/Xfiles"
export XSERVERRC ="$XDG_RUNTIME_DIR/Xfiles"

### GnuPG
#export GNUPGHOME="$XDG_DATA_HOME"/gnupg
#gpg2 --homedir "$XDG_DATA_HOME"/gnupg

### KDE
export KDEHOME="$XDG_CONFIG_HOME"/kde

### Less
export LESSHISTFILE=-

### Parallel
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel

### SVN
svn --config-dir $XDG_CONFIG_HOME/subversion
