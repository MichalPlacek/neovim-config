
vim.api.nvim_create_user_command('Fr', function()
        vim.lsp.buf.format({async=true})
    end, { nargs=0 })

