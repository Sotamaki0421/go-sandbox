#!/bin/bash

apt-get update
apt-get install -y git bash bash-completion less nano zsh curl make jq ca-certificates build-essential

curl -sS https://starship.rs/install.sh | sh -s -- -y
echo 'eval "$(starship init bash)"' >> ~/.bashrc

echo "Setup completed!"