#!/bin/bash

sudo apt-get install zsh -y
# Install Oh My Zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh /dev/stdin --unattended

# Install Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# Install Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

chsh -s $(which zsh)

cp .zshrc ~/

source ~/.zshrc

apt-get install konsole -y
apt-get install docker-compose -y
sudo usermod -aG docker $USER
newgrp docker
