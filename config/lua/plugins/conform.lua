-- plugins/conform.lua
-- 
-- conform.nvim - Modern code formatter plugin for Neovim
-- Provides black and isort formatting for Python files
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
    },
  },
}
