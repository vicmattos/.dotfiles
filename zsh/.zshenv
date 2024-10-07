
for file in $(find ~/.zshenv.d/ -type f -name "*.zshenv"); do source "$file"; done
