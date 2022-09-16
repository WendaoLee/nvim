-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\LeeWe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\LeeWe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\LeeWe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\LeeWe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\LeeWe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14dashboard\21modules.UIConfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nº\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0004\4\3\0005\5\3\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\0\1\0\4\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\ttext\22î—¿ File Explorer\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\rcodedark\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-gps"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14nvimtreee\21modules.UIConfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ná\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\6\0\0\vpython\15javascript\bcss\6c\bcpp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\n \2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\vinc_ms\3\n\rdelay_ms\3\0\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÓ\2\0\0\6\0\r\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\5\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\fproject\14base_dirs\1\0\2\ntheme\rdropdown\17hidden_files\2\1\2\0\0$C:\\Users\\LeeWe\\Documents\\GitHub\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nS\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÓ\2\0\0\6\0\r\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\5\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\fproject\14base_dirs\1\0\2\ntheme\rdropdown\17hidden_files\2\1\2\0\0$C:\\Users\\LeeWe\\Documents\\GitHub\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14nvimtreee\21modules.UIConfig\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14dashboard\21modules.UIConfig\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\rcodedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nº\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0004\4\3\0005\5\3\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\0\1\0\4\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\ttext\22î—¿ File Explorer\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ná\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\6\0\0\vpython\15javascript\bcss\6c\bcpp\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nS\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\n \2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\vinc_ms\3\n\rdelay_ms\3\0\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
