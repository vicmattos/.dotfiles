
export HERD_HOME="$HOME/Library/Application Support/Herd"

# Herd completion
eval "$($HERD_HOME/bin/herd.phar completion zsh)"
compdef _sf_herd.phar herd


# Herd injected PHP binary.
export PATH="$HERD_HOME/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="$HERD_HOME/config/php/82/"


# Herd injected NVM configuration
export NVM_DIR="$HERD_HOME/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"
