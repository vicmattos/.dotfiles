#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
  echo '/usr/local/bin/zsh already exists in /etc/shells'
else
  echo 'edit /etc/shells with /usr/local/bin/zsh (needs sudo)'
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi


if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
  echo '$SHELL is already /usr/local/bin/zsh'
else
  echo "change login shell to zsh (needs password)"
  chsh -s '/usr/local/bin/zsh'
fi


if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /bin/zsh'
else
  echo 'symlink sh to zsh (needs sudo)'
  # Looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead.
  # sudo ln -sfv /usr/local/bin/zsh /private/var/select/sh
fi


# zsh-completions Caveats
if ! brewexists zsh-completions; then
  echo 'zsh-completions not installed with homebrew'
elif false; then # TODO: is_configured validation statement
  echo 'zsh-completions installed and configured'
else
  echo 'set permissions for /usr/local/share/zsh (needs sudo)'
  chmod -R go-w '/usr/local/share/zsh'
fi
