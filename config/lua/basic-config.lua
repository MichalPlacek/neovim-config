local opt = vim.opt

opt.number = true  -- Show always line numbers
opt.relativenumber = true  -- Show always relative number.
opt.ignorecase = true  -- Ignore case letters when search
opt.smartcase = true  -- Ignore lowercase for the whole pattern
opt.mouse = 'a'  -- Enable mouse support
opt.cursorline = true -- Show cursorline

-- Converting tabs to spaces
opt.expandtab = true
opt.tabstop = 4

-- Turn backup off
opt.writebackup = false
opt.swapfile = false
