local packer = nil

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
      fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
      return true
    end
    return false
end


local function init()
    if packer == nil then
        packer = require 'packer'
        packer.init {
            disable_commands = true,
            display = {
                open_fn = function()
                    local result, win, buf = require('packer.util').float {
                        border = {{'╭', 'FloatBorder'}, {'─', 'FloatBorder'}, {'╮', 'FloatBorder'},
                                  {'│', 'FloatBorder'}, {'╯', 'FloatBorder'}, {'─', 'FloatBorder'},
                                  {'╰', 'FloatBorder'}, {'│', 'FloatBorder'}}
                    }
                    vim.api.nvim_win_set_option(win, 'winhighlight', 'NormalFloat:Normal')
                    return result, win, buf
                end
            }
        }
    end

    local use = packer.use
    packer.reset()

    use 'wbthomason/packer.nvim'

    use 'stevearc/dressing.nvim'

    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        tag = 'nightly',
        config = function()
            require('modules.UIConfig').nvimtreee();
        end
    }

    -- 分頁
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("bufferline").setup {
                options = {
                    -- 左侧让出 nvim-tree 的位置
                    offsets = {{
                        filetype = "NvimTree",
                        text = " File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }}
                }
            }
        end
    }

    use {
        'goolord/alpha-nvim',
        config = function()
            require('modules.UIConfig').dashboard();
        end
    }

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
            require('wilder').setup({
                modes = {':', '/', '?'}
            })
        end
    }

    -- automatically highlighting other uses of the word
    use {'RRethy/vim-illuminate'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                -- A list of parser names, or "all"
                ensure_installed = {"python", "javascript", "css", "c", "cpp"},

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install: missing parsers when entering buffer
                auto_install = true,

                -- List of parsers to ignore installing (for "all")
                -- ignore_install = { "javascript" },

                highlight = {
                    -- `false` will disable the whole extension
                    enable = true,

                    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
                    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
                    -- the name of the parser)
                    -- list of language that will be disabled
                    -- disable = { "c", "rust" },

                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false
                }
            }
        end
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function()
            -- You dont need to set any of these options. These are the default ones. Only
            -- the loading is important
            require('telescope').setup {
                extensions = {
                    fzf = {
                        fuzzy = true, -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true, -- override the file sorter
                        case_mode = "smart_case" -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    },
                    project = {
                        -- base_dirs = {'C:\\Users\\LeeWe\\Documents\\GitHub'},
                        hidden_files = true, -- default: false
                        theme = "dropdown"
                    }
                }
            }
            -- To get fzf loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require('telescope').load_extension('fzf')

            require'telescope'.load_extension('project')
        end
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

    use {"norcalli/nvim-colorizer.lua"}

    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    use 'wakatime/vim-wakatime'

    use 'famiu/bufdelete.nvim'

    use {
        'edluffy/specs.nvim',
        config = function()
            require('specs').setup {
                show_jumps = true,
                min_jump = 30,
                popup = {
                    delay_ms = 0, -- delay before popup displays
                    inc_ms = 10, -- time increments used for fade/resize effects 
                    blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
                    width = 10,
                    winhl = "PMenu",
                    fader = require('specs').linear_fader,
                    resizer = require('specs').shrink_resizer
                },
                ignore_filetypes = {},
                ignore_buftypes = {
                    nofile = true
                }
            }
        end
    }

    if packer_bootstrap then
        require('packer').sync()
      end

end

local plugins = setmetatable({}, {
    __index = function(_, key)
        init()
        return packer[key]
    end
})

return plugins
