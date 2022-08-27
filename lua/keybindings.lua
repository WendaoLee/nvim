vim.g.mapleader = [[\]]
vim.g.maplocalleader = [[\]]

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- TreeView
map("n","<A-`>","<Cmd>NvimTreeToggle<CR>",opt)

-- Tab
map("n","<leader>1",":bn<CR>",opt)

vim.cmd[[
    inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]]

vim.cmd[[
  set clipboard+=unnamedplus
]]


