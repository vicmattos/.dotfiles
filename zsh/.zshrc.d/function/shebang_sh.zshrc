
# https://rodaine.com/til/2020/11/sh-shebang-pipefail/

function shebang-bash() {
    sudo ln -sfv /bin/bash /private/var/select/sh
}

function shebang-zsh() {
    sudo ln -sfv /bin/zsh /private/var/select/sh
}