# vicmattos' dotfiles

## Install
```
curl -sS https://webi.sh/brew | sh
source ~/.config/envman/PATH.env && rm ~/.zshrc
brew install stow && stow git zsh ssh homebrew alacritty starship
brew bundle --verbose --file=./homebrew/.config/homebrew/Brewfile
```

### Setup
- **Add** private ssh key in **~/.ssh/id_ed25519**
- Run `for file in ./.setup/* ; do source $file ; done`
- Change this repo url with `git remote set-url origin git@github.com:vicmattos/.dotfiles.git`
