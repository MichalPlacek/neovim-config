# neovim-config

## Plugins used
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) 
- [morhetz/gruvbox](https://github.com/morhetz/gruvbox) 
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) 
- [junegunn/fzf](https://github.com/junegunn/fzf) 
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) 
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) 
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) 
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) 
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- ....

# Plugin manger:
https://github.com/folke/lazy.nvim

# For telescope:
https://github.com/BurntSushi/ripgrep
fedora: sudo dnf install ripgrep

# Additionals

## Fonts:
https://www.nerdfonts.com/font-downloads
Source Code Pro
Sauce Code Pro Nerd Font Complete

mkdir -p ~/.local/share/fonts

unzip nazwa_czcionki.zip -d ~/.local/share/fonts/

fc-cache -fv

## Java
Download: https://jdk.java.net/
Lombok: https://projectlombok.org/download
Jdtls: https://github.com/eclipse-jdtls/eclipse.jdt.ls
Formatter: https://github.com/google/styleguide/blob/gh-pages/eclipse-java-google-style.xml
## Lua
sudo dnf install gcc g++ clang ninja-build
Download and compile:
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server 
git submodule update --init --recursive
cd 3rd/luamake
compile/install.sh
if error "cannot find -lstdc++" then sudo dnf install glibc-static libstdc++-static 
cd ../..
./3rd/luamake/luamake rebuild

--set path in lsp-lua-config file.

## Python
sudo npm i -g pyright

conda install anaconda::black
conda install conda-forge::isort