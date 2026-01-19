# neovim-config

## Plugins used
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
- [yetone/avante.nvim](https://github.com/yetone/avante.nvim)
- [m4xshen/hardtime.nvim](https://github.com/m4xshen/hardtime.nvim)

## Plugin manager
https://github.com/folke/lazy.nvim

## Dependencies

### Telescope
https://github.com/BurntSushi/ripgrep
```bash
# fedora
sudo dnf install ripgrep
```

### Fonts
https://www.nerdfonts.com/font-downloads

Source Code Pro / Sauce Code Pro Nerd Font
```bash
mkdir -p ~/.local/share/fonts
unzip nazwa_czcionki.zip -d ~/.local/share/fonts/
fc-cache -fv
```

### Python
```bash
sudo npm i -g pyright

conda install anaconda::black
conda install conda-forge::isort
```
