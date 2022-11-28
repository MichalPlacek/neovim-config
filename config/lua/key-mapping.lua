local keymap = vim.keymap

keymap.set("n", "<F5>", ":NvimTreeToggle<CR>")
keymap.set("n", "<F4>", ":NvimTreeFindFile<CR>")

-- Quick switch windows
keymap.set("n", "<c-j>", "<c-w>j")  
keymap.set("n", "<c-k>", "<c-w>k")  
keymap.set("n", "<c-l>", "<c-w>l")  
keymap.set("n", "<c-h>", "<c-w>h")  

