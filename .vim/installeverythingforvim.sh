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

# Check if ~/.config/nvim exists
nvim_dir=~/.config/nvim
if [ ! -d "$nvim_dir" ]; then
    echo "Directory $nvim_dir does not exist. Creating it..."
    mkdir -p "$nvim_dir"
else
    echo "Directory $nvim_dir already exists."
fi
echo 'luafile $NVIM_INIT_VIM' > ~/.config/nvim/init.vim
