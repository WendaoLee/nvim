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
  catppuccin = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
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
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-treesitter"] = {
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
  ["quick-lint-js"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\quick-lint-js\\plugin/vim/quick-lint-js.vim",
    url = "https://github.com/quick-lint/quick-lint-js"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",C:\\Users\\LeeWe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\quick-lint-js\\plugin/vim/quick-lint-js.vim"
time([[Runtimepath customization]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\rcodedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
