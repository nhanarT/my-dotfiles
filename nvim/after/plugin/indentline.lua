indentline = require('indentmini')

indentline.setup({
    char = "|",
})

vim.cmd.highlight("IndentLine guifg=#777777")
