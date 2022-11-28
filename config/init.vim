
"variables for configuration.
" 1- on 0 - off
let is_typescript = 1
" run: npm install -g typescript typescript-language-server
" for typescript
" also should run:
" npm i -g eslint_d prettier
let is_git = 1
let is_lua = 1
let is_flutter = 1
let is_java =1

lua require("basic-config")


" Spell
set spell
set spelllang=en

" encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

"prefer unix codding
set ffs=unix,dos

"map <Esc> to exit terminal-mode:
tnoremap <Esc> <C-\><C-n>

" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

call plug#begin()

Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

Plug 'morhetz/gruvbox'

" lualine
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" TODO maybe should remove ? 
" Plug 'kyazdani42/nvim-web-devicons'
" lualine end

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" telescope end

Plug 'L3MON4D3/LuaSnip'

if is_typescript == 1
  Plug 'neovim/nvim-lspconfig'
  " not more support Plug 'nvim-lua/completion-nvim'
  " completion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'saadparwaiz1/cmp_luasnip'
  " end completion
endif

if is_git == 1
  Plug 'tpope/vim-fugitive'
  " plug gitsigns require plenary
  Plug 'lewis6991/gitsigns.nvim'
  " git integration for NERDTree
  Plug 'Xuyuanp/nerdtree-git-plugin'
endif

if is_flutter == 1
  Plug 'akinsho/flutter-tools.nvim'
endif

if is_java == 1
  Plug 'mfussenegger/nvim-jdtls'
endif
" nerd font
"https://github.com/ryanoasis/vim-devicons
"fonts : https://www.nerdfonts.com/font-downloads
Plug 'ryanoasis/vim-devicons'
call plug#end()

lua require("nvim-tree-config")

" Color scheme from: https://srcery-colors.github.io/
"colorscheme srcery
colorscheme gruvbox
set background=dark
if is_git ==1 
    lua require("gitsigns-config")
end
if is_lua ==1
  lua require("lsp-lua-config")
endif

if is_flutter ==1
  lua require("lsp-flutter-config")
endif

if is_typescript == 1
set completeopt=menu,menuone,noselect
lua require("lsp-config")
lua require("cmp-config")
lua require("telescope-config")
lua require("lualine-config")

" saga code action
nnoremap <silent><leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent><leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> [e <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> ]e <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent><leader>dl <cmd>lua vim.diagnostic.open_float()<CR>

" lsp action
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>

command! -nargs=0 Fr :lua vim.lsp.buf.formatting()<CR>

  " Telescope
  nnoremap <leader>ff <cmd>lua require('telescope.builtin').git_files()<cr>
  nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
  nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string()<cr>
  " I use fzf without preview (for long buffer names)
autocmd VimEnter * command! -bang -nargs=? Buffers call fzf#vim#buffers(<q-args>, {'options': '--no-preview'}, <bang>0)
  nnoremap <leader>fb :Buffers<cr>
  nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
  nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>

endif

lua require("key-mapping")
