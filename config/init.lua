local config = require 'config'

require("basic-config")


require("plugins-lazy")

vim.cmd([[colorscheme gruvbox]])
vim.o.background = 'dark'



if config.isLua then
   require("lsp-lua-config")
end

if config.isJava or config.isLua or config.isTypescript or config.isFlutter then
  vim.opt.completeopt = {'menu','menuone', 'noselect'}

  require("lsp-config-ts")
  require("cmp-config")
  require("telescope-config")


end

require("key-mapping")
require("user-command")
