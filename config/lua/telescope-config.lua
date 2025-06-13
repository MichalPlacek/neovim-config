local config = require 'config'

require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = {
      "node_modules","dist",".git",".idea",".husky",
      "__pycache__", ".venv", "*.pyc", ".pytest_cache"
    } 
  } 
}
