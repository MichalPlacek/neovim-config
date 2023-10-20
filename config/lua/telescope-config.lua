local config = require 'config'
--telescope not search in node modules
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","dist",".git",".idea",".husky"} } }
if config.isJava or config.isLua or config.isTypescript or config.isFlutter or config.isPython then
  require('telescope').load_extension('dap')
end

