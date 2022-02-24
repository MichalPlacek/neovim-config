--telescope not search in node modules
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","dist",".git",".idea",".husky"} } }

