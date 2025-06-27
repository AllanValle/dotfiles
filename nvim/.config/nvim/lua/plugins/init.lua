return {
        {
        -- My plugins here
        "nvim-lua/popup.nvim",    -- An implementation of the Popup API from vim in Neovim
        "nvim-lua/plenary.nvim",  -- Useful lua functions used ny lots of plugins
        "lervag/vimtex",          -- Latex Compiler
        "mbbill/undotree",
        "vim-utils/vim-man",
        "alpertuna/vim-header",
        "tpope/vim-commentary",

        -- Colorschemes
        "gruvbox-community/gruvbox",

        -- cmp plugins
        "hrsh7th/nvim-cmp",         -- The completion plugin
        "hrsh7th/cmp-buffer",       -- buffer completions
        "hrsh7th/cmp-path",         -- path completions
        "hrsh7th/cmp-cmdline",      -- cmdline completions
        "saadparwaiz1/cmp_luasnip", -- snippet completions
        "hrsh7th/cmp-nvim-lsp",
        "windwp/nvim-autopairs",    -- Autopairs

        -- snippets
        "L3MON4D3/LuaSnip",             --snippet engine
        "rafamadriz/friendly-snippets", -- a bunch of snippets to use

        -- LSP
        {
        "neovim/nvim-lspconfig",             -- enable LSP
        dependencies = {
            "williamboman/mason.nvim",           -- ensures installation of an LSP
            "williamboman/mason-lspconfig.nvim", -- bridges nvim-lspconfig and mason be telling which nvim-lspconfig command to use
            }
        },

        -- Telescope
        {
            "nvim-telescope/telescope.nvim",
            dependencies = { { 'nvim-lua/plenary.nvim' } }
        },

        -- Telescope File-Browser
        {
             "nvim-telescope/telescope-file-browser.nvim",
             dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
        },

        -- Treesitter
        {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
        },

        -- zk-nvim
        {
            "mickael-menu/zk-nvim",
            dependencies = "nvim-telescope/telescope.nvim"
        },

        -- lualine
        {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        },

        -- glow (markdown-preview)
        { "ellisonleao/glow.nvim", config = function() require("glow").setup() end },

        -- markdown preview
        {
            "iamcco/markdown-preview.nvim",
            cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
            ft = { "markdown" },
            build = function() vim.fn["mkdp#util#install"]() end,
        },

        -- zotcite
        {
            "jalvesaq/zotcite",
            dependencies = {'nvim-telescope/telescope.nvim', 'nvim-treesitter/nvim-treesitter'}
        },
        -- cmp-zotcite
        {"jalvesaq/cmp-zotcite",
            dependencies = {'jalvesaq/zotcite'}
        },

        {
          "folke/which-key.nvim",
          event = "VeryLazy",
          opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          },
          keys = {
            {
              "<leader>?",
              function()
                require("which-key").show({ global = false })
              end,
              desc = "Buffer Local Keymaps (which-key)",
            },
          },
        }

        }
    }
