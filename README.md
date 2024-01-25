# vicmattos' dotfiles

## Install
```
curl -sS https://webi.sh/brew | sh
curl -L http://install.ohmyz.sh | sh && rm ~/.zshrc
brew install stow && stow git zsh homebrew
brew bundle --verbose --file=./homebrew/.config/homebrew/Brewfile
```

### Setup
- **Add** private ssh key in **~/.ssh/id_ed25519**
- Run `for file in ./homebrew/.config/homebrew/setup/* ; do source $file ; done`