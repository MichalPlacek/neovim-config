local config = require 'config'
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')


Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons
--Plug 'nvim-tree/nvim-tree.lua'
Plug 'MunifTanjim/nui.nvim' -- optional, for file icons
Plug ('nvim-neo-tree/neo-tree.nvim', { branch = 'v2.x' })

Plug 'morhetz/gruvbox'

-- lualine
Plug 'nvim-lualine/lualine.nvim'
-- If you want to have icons in your statusline choose one of these
-- TODO maybe should remove ? 
-- Plug 'kyazdani42/nvim-web-devicons'
-- lualine end
-- *Plug('junegunn/fzf', {['do'] = 'fzf#install()'})
--TODO fix id fzf..
-- in vim: Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
--* Plug 'junegunn/fzf.vim'


-- telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
-- also install https://github.com/BurntSushi/ripgrep
-- telescope end

Plug 'L3MON4D3/LuaSnip'

if config.isJava or config.isLua or config.isTypescript or config.isFlutter or config.isPython then
  -- copilot
  Plug 'github/copilot.vim'

  Plug 'neovim/nvim-lspconfig'
  -- not more support Plug 'nvim-lua/completion-nvim'
  -- completion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'saadparwaiz1/cmp_luasnip'
  -- end completion
  
  -- outline window
  Plug 'stevearc/aerial.nvim'

end
if config.isGit then
  Plug 'tpope/vim-fugitive'
  -- plug gitsigns require plenary
  Plug 'lewis6991/gitsigns.nvim'
  -- git integration for NERDTree
  Plug 'Xuyuanp/nerdtree-git-plugin'
end

if config.isFlutter then
  Plug 'akinsho/flutter-tools.nvim'
end

if config.isJava then
  Plug 'mfussenegger/nvim-jdtls'
  Plug 'mfussenegger/nvim-dap'
end

if config.isPython then
  Plug 'mfussenegger/nvim-dap-python'
  Plug 'mfussenegger/nvim-dap'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'rcarriga/nvim-dap-ui'
  -- for formatting:
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug ('williamboman/mason.nvim', { ['do'] = ':MasonUpdate' })
end


-- nerd font
--https://github.com/ryanoasis/vim-devicons
--fonts : https://www.nerdfonts.com/font-downloads
--Plug 'ryanoasis/vim-devicons'

vim.call('plug#end')
