vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>ev', [[:vs /home/nhan/.config/nvim/<CR>]])

-- Some awesome keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set('n', 'Y', 'yg$')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Delete to void
vim.keymap.set("x", "p", "\"_dP")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Help inserting in vertical select mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Substitute the word under your vim cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Vim motion
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("", "<Left>", [[:echo 'Use hjkl instead, bro!!!'<CR>]])
vim.keymap.set("", "<Right>", [[:echo 'Use hjkl instead, bro!!!'<CR>]])
vim.keymap.set("", "<Up>", [[:echo 'Use hjkl instead, bro!!!'<CR>]])
vim.keymap.set("", "<Down>", [[:echo 'Use hjkl instead, bro!!!'<CR>]])
vim.keymap.set("", "<C-e>", "<C-u>")

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>q", "<C-w>q")
vim.keymap.set("n", "<leader>o", "<C-w>o")
vim.keymap.set("n", "<leader>w", "<C-w>w")
-- Resize the current window
vim.keymap.set("", "<C-l>" , "<C-w>>")
vim.keymap.set("", "<C-h>" , "<C-w><")
vim.keymap.set("", "<C-j>" , "<C-w>-")
vim.keymap.set("", "<C-k>" , "<C-w>+")
-- Rotate current windows
vim.keymap.set("n", "<leader>r", "<C-w>r")
vim.keymap.set("n", "<leader>tv", "<C-w>t<C-w>H", { desc = '[T]o [V]erical' })
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>K", { desc = '[T]o [H]orizontal' })

-- Force delte a buffer
vim.keymap.set("n", "<leader>bd", ":bw!<CR>", { silent = true })

-- Go to the end character of the current line
vim.keymap.set("", "<leader>v", "g_")

-- Tab alignment
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- Spawn terminal window
vim.keymap.set("n", "<leader>rt", [[:rightb vs|:term<CR>i]], { desc = '[R]ight [T]erminal' })
vim.keymap.set("n", "<leader>bt", [[:rightb sp|:term<CR>i]], { desc = '[B]otton [T]erminal' })

-- File system tree
vim.keymap.set("n", "<leader>oft", function()
    require('nvim-tree.api').tree.open({ find_file=true, update_root=true })
end, { desc = '[O]pen [F]ilesystem [T]ree' })

-- Choose autocompletion option in command mode
vim.keymap.set("c", "<Up>", "<C-p>")
vim.keymap.set("c", "<Down>", "<C-n>")
vim.keymap.set("c", "<Left>", "<Space><BS><Left>")
vim.keymap.set("c", "<Right>", "<Space><BS><Right>")

-- Escape insert mode in terminal
vim.keymap.set("t", "<C-n>", [[<C-\><C-n>]])

-- Navigate in insert mode in terminal
vim.keymap.set("t", "<M-Left>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<M-Down>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<M-Up>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<M-Right>", [[<C-\><C-n><C-w>l]])

-- Others
vim.keymap.set("n", "<leader>sh", ":noh<CR>", { silent = true, desc = '[S]top [H]ighlighting' })
vim.keymap.set("v", "<leader>ss", "y/<C-r>\"<CR>", { desc = '[S]earch [S]election' })
vim.keymap.set("n", "<leader>dcl", "0D", { desc = '[D]elete [C]urrent [L]ine' })
