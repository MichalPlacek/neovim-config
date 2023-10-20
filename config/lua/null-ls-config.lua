local null_ls = require('null-ls')
null_ls.setup({
      -- debug = true, -- Turn on debug for :NullLsLog
      diagnostics_format = "#{m} #{s}[#{c}]",
      sources = {
       --[[ null_ls.builtins.diagnostics.pylint.with({
          diagnostics_postprocess = function(diagnostic)
          diagnostic.code = diagnostic.message_id
          end,
        }), ]]---
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black.with({
          extra_args = {"--line-length=120", "--skip-string-normalization"},
        })
}
})

