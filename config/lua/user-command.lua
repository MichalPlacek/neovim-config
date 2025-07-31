
vim.api.nvim_create_user_command('Fr', function()
      require("conform").format({ async = true })
    end, { nargs=0 })


