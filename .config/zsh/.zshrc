

#eval $(keychain --agent "gpg,ssh" --dir ${KEYCHAIN_DIR} --quiet --gpg2 ventbyte_ed25519 C012CC61)
#/usr/bin/keychain --nogui $HOME/.ssh/ventbyte_ed25519
#source $HOME/.local/keychain/$(hostname)-sh
#keychain --agents "gpg,ssh" --dir $XDG_STATE_HOME/keychain ~/.ssh/*.key C012CC61

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh"
fi

safeload=(
  "$XDG_STATE_HOME/zsh/powerlevel10k/powerlevel10k.zsh-theme"
  "$XDG_STATE_HOME/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  "$XDG_STATE_HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
)

for addon in $safeload; do
  if [[ -r "$addon" ]]; then
    source $addon
  else
    echo "Cannot load addon $addon"
  fi
done

fpath=($XDG_STATE_HOME/zsh/zsh-completions/src $fpath)

if [[ -r "$XDG_STATE_HOME/dircolors/dircolors.256dark" ]]; then
  eval $(dircolors $XDG_STATE_HOME/dircolors/dircolors.256dark)
fi

# Enable the completion system
autoload compinit

# Initialize all completions on $fpath and ignore (-i) all insecure files and directories
compinit -i -d $XDG_DATA_HOME/zsh/zcompdump

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/zsh/p10k.zsh ]] || source $XDG_CONFIG_HOME/zsh/p10k.zsh