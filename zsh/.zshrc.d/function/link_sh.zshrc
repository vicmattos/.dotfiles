
# https://rodaine.com/til/2020/11/sh-shebang-pipefail/

function link-bash() {
    sudo ln -sfv /bin/bash /private/var/select/sh
}

function link-zsh() {
    sudo ln -sfv /bin/zsh /private/var/select/sh
}