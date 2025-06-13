local config = require 'config'
local keymap = vim.keymap

keymap.set("n", "<F5>", ":Neotree toggle=true<CR>")
keymap.set("n", "<F4>", ":Neotree reveal=true<CR>")

-- Quick switch windows
keymap.set("n", "<c-j>", "<c-w>j")  
keymap.set("n", "<c-k>", "<c-w>k")  
keymap.set("n", "<c-l>", "<c-w>l")  
keymap.set("n", "<c-h>", "<c-w>h")  

--map <Esc> to exit terminal-mode:
keymap.set("t", "<Esc>","<C-\\><C-n>")

if config.isTypescript or config.isFlutter or config.isPython then
  -- saga code action
  keymap.set("n", "<leader>ca","<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true })
  keymap.set("n", "<leader>rn","<cmd>lua vim.lsp.buf.rename()<CR>", { silent = true })
  keymap.set("n", "K","<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true })
  keymap.set("n", "[e","<cmd>lua vim.diagnostic.goto_prev()<CR>", { silent = true })
  keymap.set("n", "]e","<cmd>lua vim.diagnostic.goto_next()<CR>", { silent = true })
  keymap.set("n", "<leader>dl","<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true })

-- lsp action
  keymap.set("n", "gd","<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
  keymap.set("n", "gr","<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })
  keymap.set("n", "gi","<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })

-- Telescope
  keymap.set("n", "<leader>ff","<cmd>lua require('telescope.builtin').git_files()<CR>")  
  keymap.set("n", "<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<CR>")  
  keymap.set("n", "<leader>fs","<cmd>lua require('telescope.builtin').grep_string()<CR>")  
  keymap.set("n", "<leader>fb","<cmd>lua require('telescope.builtin').buffers()<CR>")  
  keymap.set("n", "<leader>fh","<cmd>lua require('telescope.builtin').help_tags()<CR>")  
  keymap.set("n", "<leader>fr","<cmd>lua require('telescope.builtin').lsp_references()<CR>")  

end



