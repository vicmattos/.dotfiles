# vicmattos' dotfiles

## Requirements
- [Homebrew](https://brew.sh/)

## Install
```
brew bundle --verbose --file=./homebrew/.config/homebrew/Brewfile
stow git zsh homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
for file in ./homebrew/.config/homebrew/setup/* ; do source $file ; done
```
