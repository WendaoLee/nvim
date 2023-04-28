vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- UI-Improve
    use {'stevearc/dressing.nvim'}

    -- bottom line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        },
        config = function()
            require('lualine').setup({
                theme = 'codedark'
            })
        end
    }

    -- for better autoinput for command-mode
    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end
    }

    -- nvim theme
    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }

    -- show code context like function etc. in the top line.
    -- Todo:Setup function
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }

    -- code better hightlight
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    
    -- for color show like css.
    use {"norcalli/nvim-colorizer.lua"}

    -- for focus help,when you move your cursor it will hightlight the cursor you pause.
    use {'edluffy/specs.nvim'}


    -- lsp:javascript
    use {'quick-lint/quick-lint-js', rtp = 'plugin/vim/quick-lint-js.vim', tag = '2.13.0', opt = true}

end)
