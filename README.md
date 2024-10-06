# vicmattos' dotfiles

## Prerequisites
```
xcode-select --install  # developer utils with git
softwareupdate --install-rosetta --agree-to-license  # x86_64 (amd64) translator to aarch64 (arm64)
```

## Install
```
curl -sS https://webi.sh/brew | sh
source ~/.config/envman/PATH.env && rm ~/.zshrc
HOMEBREW_CASK_OPTS="--no-quarantine" brew bundle --verbose --file=./homebrew/.config/homebrew/Brewfile
stow alacritty git homebrew jq ssh starship zsh
cd .ansible && ansible-playbook main.yml
```

### Specific Installs
- [vscode](vscode/README.md)

### Cleanup
- Change this repo url with `git remote set-url origin git@github.com:vicmattos/.dotfiles.git`
