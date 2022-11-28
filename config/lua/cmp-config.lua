 -- Setup nvim-cmp.

  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
       -- fix https://stackoverflow.com/questions/71914213/nvim-completion-menu-issue
      ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item()),
      ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item()),
      -- end fix
   },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' ,keyword_length = 3 },
    }),
    experimental = {
    native_menu = false,
  }

  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

 local capabilities = require("cmp_nvim_lsp").default_capabilities()
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
}
