vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/nvim-cmp')
    use({
        "L3MON4D3/LuaSnip"
    })
    use { 'saadparwaiz1/cmp_luasnip' }
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
        'xeluxee/competitest.nvim',
        requires = 'MunifTanjim/nui.nvim',
        config = function() require('competitest').setup() end
    }
    use {
        'uloco/bluloco.nvim',
        requires = { 'rktjmp/lush.nvim' }
    }
    use { 'mrcjkb/rustaceanvim',
        config = {
            function()
                vim.g.rustaceanvim = {
                    tools = {},
                    server = {
                        on_attach = function()
                        end,
                        default_settings = {
                            ['rust-analyzer'] = {
                                inlayHints = {
                                    lifetimeElisionHints = {
                                        enable = "SkipTrivial",
                                        useParameterNames = true
                                    }
                                }
                            },
                        },
                    },
                    dap = {},
                }
            end
        }
    }
    use {'github/copilot.vim', branch = 'release' }
    use { "onsails/lspkind.nvim" }
end)
