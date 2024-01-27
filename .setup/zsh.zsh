#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '$(brew --prefix)/bin/zsh' '/etc/shells'; then
  echo '$(brew --prefix)/bin/zsh already exists in /etc/shells'
else
  echo 'edit /etc/shells with $(brew --prefix)/bin/zsh (needs sudo)'
  echo $(brew --prefix)/bin/zsh | sudo tee -a '/etc/shells' >/dev/null
fi


if [ "$SHELL" = '$(brew --prefix)/bin/zsh' ]; then
  echo '$SHELL is already $(brew --prefix)/bin/zsh'
else
  echo "change login shell to zsh (needs password)"
  chsh -s $(brew --prefix)/bin/zsh
fi


if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /bin/zsh'
else
  echo 'symlink sh to zsh (needs sudo)'
  # Looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead.
  # sudo ln -sfv $(brew --prefix)/bin/zsh /private/var/select/sh
fi
