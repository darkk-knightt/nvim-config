#!/bin/bash

# Install needed programs
pacman -Syy tmux nvim fish curl unzip realpath dirname
curl -s https://ohmyposh.dev/install.sh | bash -s
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install pokeget

cp -r nvim $HOME/.config
cp -r fish $HOME/.config
cp .tmux.conf $HOME
