
vim.api.nvim_create_user_command('Fr', function()
        vim.lsp.buf.format({async=true})
    end, { nargs=0 })

-- breakpoint 
vim.api.nvim_create_user_command('Br', function()
        require('dap').toggle_breakpoint()
    end, { nargs=0 })


vim.api.nvim_create_user_command('Debug', function()
        require("dapui").toggle()
      end, { nargs=0 })

vim.api.nvim_create_user_command('DStop', function()
        require('dap').close()
    end, { nargs=0 })



