-- @ToDo:Modulatiry
vim.o.mouse = "nvi"
vim.opt.number = true

vim.wo.cursorline = true

vim.g.sqlite_clib_path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim\\lua\\dll\\sqlite3.dll"
-- setup plugins
require('plugins')

-- setup enviroment
require('enviro')

-- theme
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

-- examples for your init.lua

-- OR setup with some options
require("nvim-tree").setup({
    auto_reload_on_write = true,
    create_in_closed_folder = false,
    disable_netrw = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    ignore_buffer_on_setup = true,
    open_on_setup = false,
    open_on_setup_file = false,
    open_on_tab = true,
    ignore_buf_on_tab_change = {}, 
    sort_by = "name",
    root_dirs = {},
    prefer_startup_root = false,
    sync_root_with_cwd = false,
    reload_on_bufenter = false,
    respect_buf_cwd = false,
    on_attach = "disable", -- function(bufnr). If nil, will use the deprecated mapping strategy
    remove_keymaps = false, -- boolean (disable totally or not) or list of key (lhs)
    view = {
        adaptive_size = false,
        centralize_selection = false,
        width = 40,
        height = 30,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        -- @deprecated
        mappings = {
            custom_only = false,
            list = {
                -- user mappings go here
            }
        },
        float = {
            enable = false,
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 30,
                height = 30,
                row = 1,
                col = 1
            }
        }
    },
    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                none = " "
            }
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = ""
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌"
                }
            }
        },
        special_files = {"Cargo.toml", "Makefile", "README.md", "readme.md"},
        symlink_destination = true
    },
    hijack_directories = {
        enable = true,
        auto_open = true
    },
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {}
    },
    ignore_ft_on_setup = {},
    system_open = {
        cmd = "",
        args = {}
    },
    diagnostics = {
        enable = false,
        show_on_dirs = false,
        debounce_delay = 50,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = ""
        }
    },
    filters = {
        dotfiles = false,
        custom = {},
        exclude = {}
    },
    filesystem_watchers = {
        enable = true,
        debounce_delay = 50
    },
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false
        },
        expand_all = {
            max_folder_discovery = 300,
            exclude = {}
        },
        file_popup = {
            open_win_config = {
                col = 1,
                row = 1,
                relative = "cursor",
                border = "shadow",
                style = "minimal"
            }
        },
        open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = {"notify", "packer", "qf", "diff", "fugitive", "fugitiveblame"},
                    buftype = {"nofile", "terminal", "help"}
                }
            }
        },
        remove_file = {
            close_window = true
        }
    },
    trash = {
        cmd = "gio trash",
        require_confirm = true
    },
    live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            dev = false,
            diagnostics = false,
            git = false,
            profile = false,
            watcher = false
        }
    }
})

-- specs
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

-- scroll-view
require('scrollview').setup({
    base = 'right'

})

-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        --diagnostics = "nvim_lsp",
	
         
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = " File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}

require("nvim-gps").setup()

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true
}

-- highlight word
require('lualine').setup({
    theme = 'codedark'
})

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {"python","javascript","css","c","cpp"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
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

require'treesitter-context'.setup {
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
        -- For all filetypes
        -- Note that setting an entry here replaces all other patterns for this entry.
        -- By setting the 'default' entry below, you can control which nodes you want to
        -- appear in the context window.
        default = {'class', 'function', 'method' -- 'for', -- These won't appear in the context
        -- 'while',
        -- 'if',
        -- 'switch',
        -- 'case',
        }
        -- Example for a specific filetype.
        -- If a pattern is missing, *open a PR* so everyone can benefit.
        --   rust = {
        --       'impl_item',
        --   },
    },
    exact_patterns = {
        -- Example for a specific filetype with Lua patterns
        -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
        -- exactly match "impl_item" only)
        -- rust = true,
    },

    -- [!] The options below are exposed but shouldn't require your attention,
    --     you can safely ignore them.

    zindex = 20, -- The Z-index of the context window
    mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
    separator = nil -- Separator between context and content. Should be a single character string, like '-'.
}

local wilder = require('wilder')
wilder.setup({
    modes = {':', '/', '?'}
})

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
        }
    }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require('telescope').setup {
    extensions = {
        project = {
            base_dirs = {'C:\\Users\\LeeWe\\Documents\\GitHub'},
            hidden_files = true, -- default: false
            theme = "dropdown"
        }
    }
}

require'telescope'.load_extension('project')

-- -- lsp
-- require("nvim-lsp-installer").setup {}

-- -- cmp
-- require('cmp').setup()

-- keybinding
require('keybindings')
