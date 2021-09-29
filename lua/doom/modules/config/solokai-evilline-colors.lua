local colors = {}

colors.default = {
    bg = "#3B4252",
    fg = "#bbc2cf",
    yellow = "#ECBE7B",
    cyan = "#008080",
    darkblue = "#081633",
    green = "#98be65",
    orange = "#FF8800",
    violet = "#a9a1e1",
    magenta = "#c678dd",
    blue = "#51afef",
    red = "#ec5f67",

}

colors.molokai = {
    bg = "#303030",
    fg = "#efefef",
    yellow = "#FFFF00",
    cyan = "#008080",
    darkblue = "#081633",
    green = "#98be65",
    orange = "#FF8800",
    violet = "#a9a1e1",
    magenta = "#c678dd",
    blue = "#51afef",
    red = "#ec5f67",
}

colors.solokai = {
    bg_alt = "#26292c",
    bg = "#303030",
    fg_alt = "#2E323C",
    grey = "#303030",
    fg = "#bbc2cf",
    pink = "#FF79FF",
    red = "#FF2052",
    error = "#FF4050",
    magenta = "#F92672",
    -- red = "#e95678",
    yellow = "#FFFF00",
    orange = "#FFB86C",
    dark_orange = "#da8548",
    warning = "#FFFF00",
    light_blue = "#00CCFF",
    green = "#a6e22e",
    cyan = "#66d9ef",
    cyan_alt= "#46D9FF",
    hint = "#50FA7B",
    info= "#46D9FF",
    blue = "#51afef",
    dark_blue = "#007DFF",
    teal = "#A4FFFF",
    purp = "#BD93F9",
    dark_red = "#FF5555",
}

colors["doom-one"] = {
    bg = "#23272e",
    fg = "#bbc2cf",
    fg_alt = "#5B6268",
    yellow = "#ECBE7B",
    cyan = "#46D9FF",
    green = "#98be65",
    orange = "#da8548",
    magenta = "#c678dd",
    blue = "#51afef",
    red = "#ff6c6b",

}

colors.gruvbox = {
    bg = "#32302f",
    fg = "#d4be98",
    fg_alt = "#ddc7a1",
    yellow = "#d8a657",
    cyan = "#89b482",
    green = "#a9b665",
    orange = "#e78a4e",
    magenta = "#d3869b",
    blue = "#7daea3",
    red = "#ea6962",

}

colors.nord = {
    bg = "#3B4252",
    fg = "#ECEFF4",
    fg_alt = "#D8DEE9",
    yellow = "#EBCB8B",
    cyan = "#88C0D0",
    green = "#A3BE8C",
    orange = "#D08770",
    magenta = "#B48EAD",
    blue = "#5E81AC",
    red = "#BF616A",

}

colors.dracula = {
    bg = "#21222C",
    fg = "#F8F8F2",
    fg_alt = "#ABB2BF",
    yellow = "#F1FA8C",
    cyan = "#8BE9FD",
    green = "#50FA7B",
    orange = "#FFB86C",
    magenta = "#BD93F9",
    blue = "#A4FFFF",
    red = "#FF5555",

}
colors.get_color = function(color)
    return function()
        for theme_name, _ in pairs(colors) do
            if vim.g.colors_name and vim.g.colors_name:find(theme_name, 1, true) then
                return colors[theme_name][color]
            end
        end
        return colors.default[color]
    end
end

return colors
