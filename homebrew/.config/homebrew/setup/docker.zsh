#!/usr/bin/env zsh

echo "\n<<< Starting Docker Setup >>>\n"

if ! brewexists docker; then
    echo 'docker not installed with homebrew. Skipping docker-compose setup.'
elif ! brewexists docker-compose; then
    echo 'docker-compose not installed with homebrew. Skipping setup.'
else
    echo '~/.docker/cli-plugins/docker-compose linked to /usr/local/opt/docker-compose/bin/docker-compose'
    # Compose is now a Docker plugin. For Docker to find this plugin, symlink it:
    mkdir -p ~/.docker/cli-plugins
    ln -sfn /usr/local/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
fi