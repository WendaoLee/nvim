-- vim.cmd [[packadd packer.nvim]]
-- packer = require('packer')
-- packer.init()
-- ui = require('modules.ui.plugins')
-- -- plugins = require('modules.themes.plugins')
-- -- conf[1] = {
-- --     "catppuccin/nvim",
-- --     as = "catppuccin",
-- --     config = function()
-- --         local config = require('modules.themes.config')
-- --         config.catppuccin()
-- --     end
-- -- }
-- -- conf[2] = 
-- -- {
-- --     "goolord/alpha-nvim",
-- --     config = function ()
-- --         local config = require('modules.ui.config')
-- --         config.dashboard()
-- --     end
-- -- }
-- packer.use(
--     ui
-- )
-- -- packer.use(
-- -- )
return require('packer').startup(function(use)
    -- 在代碼大跨越時產生動畫提示游標起點位置
    use {'edluffy/specs.nvim'}

    use 'stevearc/dressing.nvim'

    -- Theme
    use {
        "catppuccin/nvim",
        as = "catppuccin"

    }

    -- Treeview
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- 分頁
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- dashboard
    use {
        'goolord/alpha-nvim',
        config = function()
            config = require('modules.ui.config')
            config.dashboard()
        end
    }

    -- bottom line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    use {'dstein64/nvim-scrollview'}

    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
    }

    -- indent
    use "lukas-reineke/indent-blankline.nvim"

    -- more adventurous wildmenu
    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end
    }
    use {'RRethy/vim-illuminate'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use {"nvim-telescope/telescope-file-browser.nvim"}

    use {'nvim-telescope/telescope-project.nvim'}

    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require"telescope".load_extension("frecency")
        end,
        requires = {"kkharji/sqlite.lua"}
    }

    -- show trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use {
        "norcalli/nvim-colorizer.lua"
    }

    use 'wbthomason/packer.nvim' -- Package manager
    -- use {
    --     "williamboman/nvim-lsp-installer",
    --     "neovim/nvim-lspconfig",
    -- }

    -- use {"hrsh7th/nvim-cmp"}

    -- use "lukas-reineke/cmp-under-comparator"

    use {'neoclide/coc.nvim', branch = 'release'}

    use 'wakatime/vim-wakatime'

    use 'famiu/bufdelete.nvim'
end)

