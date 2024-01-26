local comment = require('nvim_comment')

comment.setup(
{
    -- Linters prefer comment and line to have a space in between markers
    marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = true,
    -- trim empty comment whitespace
    comment_empty_trim_whitespace = true,
    -- Should key mappings be created
    create_mappings = false,
    -- Normal mode mapping left hand side
    line_mapping = "<leader>cl",
    -- Visual/Operator mapping left hand side
    operator_mapping = "<leader>cc",
    -- text object mapping, comment chunk,,
    comment_chunk_text_object = "ic",
    -- Hook function to call before commenting takes place
    hook = nil
}
)

vim.keymap.set("n", "<leader>cc", vim.cmd.CommentToggle)
vim.keymap.set("v", "<leader>cc", [[:'<,'>CommentToggle<CR>]], { silent = true })
