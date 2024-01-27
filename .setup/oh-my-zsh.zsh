#!/usr/bin/env zsh

echo "\n<<< Starting Oh My Zsh Setup >>>\n"


rm -f ~/.zshrc.pre-oh-my-zsh

for omz_plugin in zsh-completions zsh-autosuggestions zsh-syntax-highlighting
do
  FOLDER=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$omz_plugin
  if [ ! -d "$FOLDER" ] ; then
    git clone https://github.com/zsh-users/$omz_plugin.git "$FOLDER"
  fi
done
