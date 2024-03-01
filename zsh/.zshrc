
source ~/.zshrc.d/zsh.zshrc
for file in $(find ~/.zshrc.d/ -type f); do source "$file"; done
