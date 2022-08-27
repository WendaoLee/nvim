local config = {}

function config.dashboard()
    local alpha = require('alpha')
    local dashboard = require("alpha.themes.dashboard")
    local button = dashboard.button

    dashboard.section.header.val = {       
    [[⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠤⠤⠖⠒⠛⠋⠉⠉⠉⠉⠉⠉⠻⠿⠛⠻⠿⠛⠳⠦⠤⠤⠍⠙⠛⠶⠄⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠂⠂⠠⠴⠞⠛⠉⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠴⠿⠃⠲⠄⠈⠻⠦⠂⠂⠂⠉⠻⠷⠾⠧⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠠⠾⠛⠁⠂⠂⠂⠂⠂⠂⠂⠂⠂⠠⠚⠡⠾⠟⠁⠂⠂⠻⠦⠂⠘⠧⠂⠂⠂⠄⠸⠛⠎⠙⠳⠦⠂⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠠⠾⠛⠵⠾⠅⠂⠂⠂⠤⠴⠟⠂⠂⠴⠋⠴⠿⠋⠄⠂⠂⠂⠸⠿⠧⠂⠙⠧⠂⠂⠇⠸⠇⠻⠂⠂⠘⠿⠦⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠰⠿⠁⠾⠏⠼⠁⠂⠠⠾⠿⠏⠂⠴⠻⠵⠛⠉⠇⠂⠷⠂⠰⠂⠸⠹⠿⠆⠂⠻⠦⠂⠿⠯⠇⠸⠇⠂⠂⠸⠿⠿⠆⠂⠂⠂⠂⠂]],
    [[⠂⠿⠧⠾⠟⠂⠿⠂⠂⠸⠿⠿⠠⠾⠋⠉⠂⠂⠄⠇⠂⠿⠽⠄⠶⠛⠘⠿⠿⠂⠸⠏⠩⠿⠿⠟⠿⠻⠂⠂⠶⠿⠿⠿⠂⠂⠂⠂⠂]],
    [[⠂⠿⠿⠻⠇⠂⠻⠆⠂⠬⠻⠿⠼⠃⠇⠂⠂⠂⠧⠛⠸⠿⠿⠇⠿⠄⠂⠿⠿⠇⠼⠇⠼⠿⠿⠿⠽⠿⠄⠦⠿⠿⠸⠏⠂⠂⠂⠂⠂]],
    [[⠂⠈⠻⠍⠱⠄⠘⠧⠂⠻⠆⠉⠿⠂⠻⠷⠒⠂⠻⠠⠿⠿⠿⠇⠿⠷⠂⠻⠿⠰⠿⠳⠿⠿⠟⠻⠿⠼⠾⠿⠟⠧⠾⠁⠂⠂⠂⠂⠂]],
    [[⠂⠂⠈⠛⠮⠻⠷⠿⠷⠼⠿⠮⠶⠦⠘⠿⠷⠶⠸⠿⠿⠟⠿⠿⠽⠿⠧⠿⠿⠏⠾⠾⠋⠋⠂⠼⠏⠛⠋⠉⠉⠉⠿⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠈⠙⠻⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠇⠇⠿⠟⠿⠟⠷⠽⠏⠙⠓⠐⠂⠂⠈⠁⠂⠂⠂⠠⠞⠁⠂⠂⠂⠂⠂⠂]],
    [[⠂⠙⠒⠶⠦⠤⠤⠴⠾⠿⠿⠿⠟⠛⠛⠛⠹⠿⠿⠿⠿⠿⠿⠽⠷⠈⠂⠂⠉⠛⠃⠂⠂⠂⠂⠂⠂⠂⠂⠠⠟⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠂⠤⠶⠿⠿⠻⠿⠋⠡⠞⠂⠂⠠⠿⠿⠿⠛⠉⠁⠉⠉⠙⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠰⠟⠂⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠼⠿⠿⠿⠿⠟⠵⠼⠏⠂⠂⠂⠼⠸⠟⠻⠦⠤⠤⠂⠂⠂⠂⠂⠤⠶⠒⠲⠶⠤⠤⠤⠤⠤⠟⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂]],
    [[⠂⠂⠂⠂⠻⠿⠿⠿⠿⠴⠿⠿⠇⠂⠴⠶⠿⠿⠤⠤⠄⠂⠉⠉⠉⠓⠒⠿⠭⠄⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠠⠂⠂⠂]],
    [[⠂⠂⠂⠂⠂⠠⠩⠍⠽⠿⠿⠿⠷⠾⠿⠟⠋⠈⠉⠉⠙⠛⠲⠤⠤⠂⠂⠂⠨⠽⠯⠂⠠⠂⠄⠂⠠⠂⠂⠉⠤⠰⠂⠂⠂⠂⠂⠂⠤]],
    [[⠛⠂⠈⠁⠉⠬⠶⠋⠉⠂⠂⠉⠉⠉⠛⠛⠛⠠⠤⠤⠤⠤⠤⠤⠭⠉⠓⠲⠿⠷⠷⠶⠼⠦⠅⠂⠸⠄⠂⠏⠡⠠⠄⠂⠂⠘⠃⠃⠂]],
    [[ ]],
    [[Thou shalt be free as mountain winds]],
    }

    dashboard.section.buttons.val = {
        button("Command ene", "  New file", "<cmd>ene <CR>"),
        button("Command <key>ff", "  Find file","<cmd>Telescope find_files <CR>"),
        button("Command <key>fr","  Files History","<cmd>Telescope oldfiles <CR>"),
        button("Command <key>fp","  Project","<cmd>Telescope project <CR>"),
        button("Blessing to you","  Close","<cmd>q <CR>")
    }
    
    alpha.setup(dashboard.config)
    
end

function config.nvimtree()
    local nvimtree = require('')
end

return config