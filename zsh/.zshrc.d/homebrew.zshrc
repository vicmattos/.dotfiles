
export HOMEBREW_CASK_OPTS="--no-quarantine"

export HOMEBREW_BUNDLE_FILE_GLOBAL=~/.config/homebrew/Brewfile

alias brew-export='brew bundle dump --force --describe --global'
alias brew-install='brew bundle --global --verbose'

# Add autocompletions installed from brew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
