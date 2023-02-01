
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

lua require("plugins")

lua require("nvim-tree-config")

" Color scheme from: https://srcery-colors.github.io/
"colorscheme srcery
lua vim.cmd([[colorscheme gruvbox]])
lua vim.o.background = 'dark'

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
lua require("aerial-config")

endif

lua require("key-mapping")
lua require("user-command")
