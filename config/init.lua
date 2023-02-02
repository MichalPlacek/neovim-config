local config = require 'config'

require("basic-config")

require("plugins")

require("nvim-tree-config")

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


if config.isJava or config.isLua or config.isTypescript or config.isFlutter then
  vim.opt.completeopt = {'menu','menuone', 'noselect'}

  require("lsp-config")
  require("cmp-config")
  require("telescope-config")
  require("lualine-config")
  require("aerial-config")

end

require("key-mapping")
require("user-command")
