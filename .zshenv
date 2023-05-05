## === XDG Base Directories === ##
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.local/cache

# ## === Paths === ##
export KEYCHAIN_DIR=$XDG_STATE_HOME/keychain
export DOTFILES=$XDG_CONFIG_HOME/dotfiles

## === ZSH === ###
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/zhistory"
export ZSH_COMPDUMP="$XDG_DATA_HOME/zsh/zcompdump"

## === GnuPG === ##
export GNUPGNOME=$XDG_CONFIG_HOME/gnupg
export GPG_TTY=$(tty)

## === Editors === ##
export EDITOR="nano"
export VISUAL="nano"
export PAGER=less

# ## === Regional Settings === ##
export LANG="en_US.UTF-8"

# # Ensure path arrays do not contain duplicates.
# typeset -gU path fpath cdpath mailpath

# ## === Misc === ##

# # Use `< file` to quickly view the contents of any file.
# [[ -z "$READNULLCMD" ]] || READNULLCMD=$PAGER

