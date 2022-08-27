local themes = {}
local conf = require("modules.themes.config")

themes["catppuccin/nvim"] = {
    config = conf.catppuccin
}

return themes