local config = require 'config'

require("basic-config")


require("plugins-lazy")

vim.cmd([[colorscheme gruvbox]])
vim.o.background = 'dark'

-- for avante plugin
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3


if config.isPython then
  vim.opt.completeopt = {'menu','menuone', 'noselect'}

  require("cmp-config")
  require("telescope-config")
  require("treesitter") 

end

require("key-mapping")
require("user-command")
