# vicmattos' dotfiles

## Install
```
curl -sS https://webi.sh/brew | sh
source ~/.config/envman/PATH.env && rm ~/.zshrc
HOMEBREW_CASK_OPTS="--no-quarantine" brew bundle --verbose --file=./homebrew/.config/homebrew/Brewfile
ansible-playbook .ansible/main.yml --ask-become-pass --ask-vault-pass
stow alacritty git homebrew jq ssh starship zsh
```

### Specific Installs
- [vscode](vscode/README.md)

### Cleanup
- Change this repo url with `git remote set-url origin git@github.com:vicmattos/.dotfiles.git`
