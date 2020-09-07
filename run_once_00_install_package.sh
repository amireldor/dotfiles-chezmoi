#!/bin/bash

set -v

sudo apt update

sudo apt install -y \
	build-essential git \
	neovim \
	silversearcher-ag

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# pyenv
curl https://pyenv.run | bash

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh
sh /tmp/rustup.sh -y # no prompt

source $HOME/.cargo/env

# neovim plugins
nvim +PlugInstall +qa

# some shell prompt
cargo install starship
