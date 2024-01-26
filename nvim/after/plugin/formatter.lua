local util = require('formatter.util')
local function djlint_format()
  return {
    exe = "djlint",
    args = {
      "--reformat",
      "--max-line-length 100",
      "--indent 2",
      "--ignore-case",
      util.escape_path(util.get_current_buffer_file_path()),
      "--",
      "-",
    },
    stdin=true,
  }
end

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    python = {
      require('formatter.filetypes.python').black,
    },
    html = {
      djlint_format,
      require('formatter.filetypes.html').prettier,
    },
    -- Use vim.bo.filetype to get the file type
    htmldjango = {
      djlint_format,
    },
    css = {
        require('formatter.filetypes.css').prettier
    },
    javascript = {
        require('formatter.filetypes.javascript').prettier
    },
    javascriptreact = {
        require('formatter.filetypes.javascriptreact').prettier
    },
    typescript = {
        require('formatter.filetypes.typescript').prettier
    },
    typescriptreact = {
        require('formatter.filetypes.typescriptreact').prettier
    },
    go = {
        require('formatter.filetypes.go').gofmt
    }
  }
}
