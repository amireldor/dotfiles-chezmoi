#!/bin/bash

set -v

# apt repository - vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# apt repository - docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# apt packages
sudo apt install -y \
	build-essential git libssl-dev \
	neovim code \
	silversearcher-ag direnv \
	docker-ce docker-ce-cli containerd.io \
	zsh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# pyenv
curl https://pyenv.run | bash

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh
sh /tmp/rustup.sh -y # no prompt
source $HOME/.cargo/env

# some shell prompt
curl -fsSL https://starship.rs/install.sh > /tmp/starship.sh
bash /tmp/starship.sh -y

# neovim plugins
nvim +PlugInstall +qa

# oh-my-zsh
CHSH=no RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WANTED_SHELL=/usr/bin/zsh
if [ $SHELL != $WANTED_SHELL ]; then
   chsh -s $WANTED_SHELL
fi
