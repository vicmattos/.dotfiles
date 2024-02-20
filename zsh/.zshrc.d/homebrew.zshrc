
export HOMEBREW_CASK_OPTS="--no-quarantine"

export HOMEBREW_BUNDLE_FILE_GLOBAL=~/.config/homebrew/Brewfile

alias brew-export='brew bundle dump --force --describe --global'
alias brew-install='brew bundle --global --verbose'
