#!/bin/bash


# Check if Tmux is installed
if ! command -v tmux &> /dev/null; then
    echo "Tmux is not installed. Please install Tmux first."
    exit 1
else
    sudo apt install tmux	
fi

# Check if Tpm is already installed
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Tpm is already installed."
else
	# Install Tpm
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "Tpm has been installed."
fi

export NVIM_init_VIM=~/configs/.vim/init.lua

echo 'source ~/.nvimrc' > ~/.config/nvim/init.vim
