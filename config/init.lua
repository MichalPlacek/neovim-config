local config = require 'config'

require("basic-config")


require("plugins-lazy")

vim.cmd([[colorscheme gruvbox]])
vim.o.background = 'dark'

-- for avante plugin
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3


if config.isJava or config.isLua or config.isTypescript or config.isFlutter then
  vim.opt.completeopt = {'menu','menuone', 'noselect'}

  require("lsp-config-ts")
  require("cmp-config")
  require("telescope-config")


end

require("key-mapping")
require("user-command")
