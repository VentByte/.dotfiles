

#eval $(keychain --agent "gpg,ssh" --dir ${KEYCHAIN_DIR} --quiet --gpg2 ventbyte_ed25519 C012CC61)
#/usr/bin/keychain --nogui $HOME/.ssh/ventbyte_ed25519
#source $HOME/.local/keychain/$(hostname)-sh
#keychain --agents "gpg,ssh" --dir $XDG_STATE_HOME/keychain ~/.ssh/*.key C012CC61

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "$XDG_CACHE_HOME/powerlevel10k/instant-prompt-${(%):-%n}.zsh" ]]; then
  source "$XDG_CACHE_HOME/powerlevel10k/instant-prompt-${(%):-%n}.zsh"
fi

if [[ -r "$XDG_STATE_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source $XDG_STATE_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
fi

if [[ -r "$XDG_STATE_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source $XDG_STATE_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -r "$XDG_STATE_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source $XDG_STATE_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

fpath=($XDG_STATE_HOME/zsh/plugins/zsh-completions/src $fpath)

if [[ -r "$XDG_STATE_HOME/dircolors/dircolors.256dark" ]]; then
  eval $(dircolors $XDG_STATE_HOME/dircolors/dircolors.256dark)
fi

# Enable the completion system
autoload compinit

# Initialize all completions on $fpath and ignore (-i) all insecure files and directories
compinit -i

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/zsh/p10k.zsh ]] || source $XDG_CONFIG_HOME/zsh/p10k.zsh