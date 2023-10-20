local config = require 'config'

require("basic-config")

require("plugins")

vim.cmd([[colorscheme gruvbox]])
vim.o.background = 'dark'

if config.isGit then
    require("gitsigns-config")
end


if config.isLua then
   require("lsp-lua-config")
end

if config.isFlutter then
  require("lsp-flutter-config")
end

if config.isPython then
  require("lsp-python-config")
  require("dap-python-config")
end


if config.isJava or config.isLua or config.isTypescript or config.isFlutter then
  vim.opt.completeopt = {'menu','menuone', 'noselect'}

  require("lsp-config-ts")
  require("cmp-config")
  require("telescope-config")
  require("lualine-config")
  require("aerial-config")

  require("null-ls-config")

  require("dapui").setup()

  require("mason").setup()


end

require("key-mapping")
require("user-command")
