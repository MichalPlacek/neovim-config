return {
  { 
    'hrsh7th/nvim-cmp',
    dependencies = { 
      {'hrsh7th/cmp-nvim-lsp'}, 
      {	"L3MON4D3/LuaSnip",
	      -- follow latest release.
	      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	      -- install jsregexp (optional!).
	      build = "make install_jsregexp"
      },
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-cmdline'}
    }
  }
}
