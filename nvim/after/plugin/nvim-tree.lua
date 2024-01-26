-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.cmd [[packadd nvim-web-devicons]]

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', '<leader>vs', api.node.open.vertical,           opts('[V]ertical [S]plit'))
  vim.keymap.set('n', '<leader>hs', api.node.open.horizontal,         opts('[H]orizontal [S]plit'))
end

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  actions = {
    open_file = {
        window_picker ={
            chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        }
    }
  },
  on_attach = my_on_attach,
})

vim.cmd('hi WinSeparator guifg=White')
vim.cmd('hi NvimTreeWinSeparator guifg=White')
