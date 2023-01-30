#!/bin/bash

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Enable Zsh Autosuggestions
echo "plugins=(zsh-autosuggestions)" >> ~/.zshrc

# Install Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Enable Zsh Syntax Highlighting
echo "plugins=(zsh-syntax-highlighting)" >> ~/.zshrc

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set Powerlevel10k as the Zsh theme
echo "ZSH_THEME="powerlevel10k/powerlevel10k"" >> ~/.zshrc

# Restart the terminal or source the ~/.zshrc file for the changes to take effect
source ~/.zshrc
