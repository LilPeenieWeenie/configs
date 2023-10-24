require("core.keymaps")
-- Set runtimepath
vim.o.runtimepath = vim.o.runtimepath .. ',~/.vim'
vim.o.runtimepath = vim.o.runtimepath .. ',~/.vim/after'

-- Set packpath
vim.o.packpath = vim.o.runtimepath

-- Source the vimrc file
vim.cmd('source ~/.vim/vimrc')
