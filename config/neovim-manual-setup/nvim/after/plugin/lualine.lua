local status, lualine = pcall (require, "lualine")
if not status then
    return
end


local lualine_molokai = require("lualine.themes.molokai")

-- lualine_molokai.command = {
--     a = {
--         gui = "bold",
--         bg = new_colors.yellow,
--         fg = new_colors.black,
--     },
-- }


lualine.setup({
    options = {
        theme = lualine_molokai
    }
})
