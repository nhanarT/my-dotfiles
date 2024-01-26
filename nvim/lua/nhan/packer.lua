-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Fucntions from packer have the prefix "Packer*"
    use { 'wbthomason/packer.nvim', opt = true}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'}
        }
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {}
        end
    })

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use("nvim-treesitter/nvim-treesitter-context")
    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'L3MON4D3/LuaSnip'},     -- Required
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'}
        }
    }
    use {'mhartington/formatter.nvim'}

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'nvim-tree/nvim-tree.lua',
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'norcalli/nvim-colorizer.lua'
    use 'folke/tokyonight.nvim'
    use 'itchyny/vim-highlighturl'
    use 'karoliskoncevicius/vim-sendtowindow'
    use 'easymotion/vim-easymotion'

    use "terrortylor/nvim-comment"

    use 'nvimdev/indentmini.nvim'

    use {
        "scalameta/nvim-metals",
        requires = {
          "nvim-lua/plenary.nvim",
        },
    }
end)
