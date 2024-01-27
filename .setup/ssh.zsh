

echo "\n<<< Starting SSH Setup >>>\n"

echo 'starting ssh-agent'
eval $(ssh-agent -s)

if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo 'private key not found in ~/.ssh/id_ed25519'
else
    echo 'ensure 400 permission for ssh private key'
    chmod 400 ~/.ssh/id_ed25519
    echo 'adding ~/.ssh/id_ed25519 in ssh-agent (needs key password)'
    ssh-add ~/.ssh/id_ed25519
fi