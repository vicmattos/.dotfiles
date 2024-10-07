
source ~/.zshrc.d/zsh.zshrc
for file in $(find ~/.zshrc.d/ -type f -name "*.zshrc"); do source "$file"; done
