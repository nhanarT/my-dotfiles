local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

augroup('set-commentstring-ag', { clear = true })
autocmd({'BufEnter', 'BufFilePost'}, {
  group = 'set-commentstring-ag',
  pattern = {'*.sql'},
  callback = function()
    vim.api.nvim_buf_set_option(0, "commentstring", "-- %s")
  end
})

augroup('html-setting', {clear = true})
autocmd({'BufEnter', 'FileType'}, {
    group='html-setting',
    pattern = {'*.html', '*.css'},
    callback = function ()
        vim.opt.tabstop=2
        vim.opt.shiftwidth=2
        vim.opt.softtabstop=2
    end
})
