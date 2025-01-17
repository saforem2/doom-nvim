local M = {}

M.config = function()
    local gl = require("galaxyline")
    local gls = gl.section
    local colors = require("modules.galaxyline.colors")["solokai"]
    local condition = require("galaxyline.condition")
    gl.short_line_list = { "NvimTree", "vista", "dbui", "packer" }
    gls.left[1] = {
        RainbowRed = {
            provider = function ()
                return "⣿ "
            end,
            highlight = { colors.pink, colors.bg }
        }
    }
    gls.left[2] = {
        ViMode = {
            provider = function()
                -- auto change color according the vim mode
                local mode_color = {
                    n = colors.yellow,
                    i = colors.red,
                    v = colors.blue,
                    [""] = colors.blue,
                    V = colors.blue,
                    c = colors.magenta,
                    no = colors.red,
                    s = colors.orange,
                    S = colors.orange,
                    -- [""] = colors.orange,
                    ic = colors.yellow,
                    R = colors.violet,
                    Rv = colors.violet,
                    cv = colors.red,
                    ce = colors.red,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ["r?"] = colors.cyan,
                    ["!"] = colors.red,
                    t = colors.red,
                }
                vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()])
                return " "
            end,
            highlight = { colors.red, colors.bg, "bold" },
        },
    }
    gls.left[3] = {
        FileSize = {
            provider = "FileSize",
            condition = condition.buffer_not_empty,
            highlight = { colors.fg, colors.bg },
        },
    }
    gls.left[4] = {
        FileIcon = {
            provider = "FileIcon",
            condition = condition.buffer_not_empty,
            highlight = {
                require("galaxyline.providers.fileinfo").get_file_icon_color, colors.bg
            },
        },

    }
    gls.left[5] = {
        FileName = {
            provider = "FileName",
            condition = condition.buffer_not_empty,
            highlight = { colors.light_blue, colors.bg, "bold" },
        },
    }
    gls.left[6] = {
        LineInfo = {
            provider = "LineColumn",
            separator = "",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.fg, colors.bg },
        },

    }
    gls.left[7] = {
        PerCent = {
            provider = "LinePercent",
            separator = " ",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.fg_alt, colors.bg, "bold" },
        },

    }
    gls.left[8] = {
        DiagnosticError = {
            provider = "DiagnosticError",
            icon = "  ",
            highlight = { colors.red, colors.bg },
        },
    }
    gls.left[9] = {
        DiagnosticWarn = {
            provider = "DiagnosticWarn",
            icon = "  ",
            highlight = { colors.orange, colors.bg },
        },

    }
    gls.left[10] = {
        DiagnosticHint = {
            provider = "DiagnosticHint",
            icon = "  ",
            highlight = { colors.hint, colors.bg },
        },
    }
    gls.left[11] = {
        DiagnosticInfo = {
            provider = "DiagnosticInfo",
            icon = "  ",
            highlight = { colors.info, colors.bg },
        },
    }
    gls.mid[1] = {
        ShowLspClient = {
            provider = "GetLspClient",
            condition = function()
                local tbl = { ["dashboard"] = true, [""] = true }
                if tbl[vim.bo.filetype] then
                    return false
                end
                return true
            end,
            icon = '  λ ',
            -- icon = "  LSP:",
            highlight = { colors.cyan, colors.bg, "bold" },
        },

    }
    gls.right[4] = {
       ScrollBar = {
         provider = 'ScrollBar',
                     separator = ' ● ',
        separator_highlight = {colors.blue,colors.line_bg},
         highlight = {colors.yellow,colors.bg},
       }
     }
    gls.right[1] = {
        FileEncode = {
            provider = "FileEncode",
            condition = condition.hide_in_width,
            separator = " ",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.green, colors.bg, "bold" },
        },

    }
    gls.right[2] = {
        FileFormat = {
            provider = "FileFormat",
            condition = condition.hide_in_width,
            separator = " ",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.green, colors.bg, "bold" },
        },

    }
    gls.right[3] = {
        GitIcon = {
            provider = function()
                return " ﯙ "
            end,
            -- provider = function()
            --     return "  "
            -- end,
            condition = condition.check_git_workspace,
            separator = " ",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.purp, colors.bg, "bold" },
        },

    }
    gls.right[4] = {
        GitBranch = {
            provider = "GitBranch",
            condition = condition.check_git_workspace,
            highlight = { colors.purp, colors.bg, "bold" },
        },

    }
    gls.right[5] = {
        DiffAdd = {
            provider = "DiffAdd",
            condition = condition.hide_in_width,
            icon = "  ",
            highlight = { colors.green, colors.bg },
        },
    }
    gls.right[6] = {
        DiffModified = {
            provider = "DiffModified",
            condition = condition.hide_in_width,
            icon = " 柳",
            highlight = { colors.orange, colors.bg },
        },
    }
    gls.right[7] = {
        DiffRemove = {
            provider = "DiffRemove",
            condition = condition.hide_in_width,
            icon = "  ",
            highlight = { colors.red, colors.bg },
        },

    }
    gls.right[8] = {
        RainbowBlue = {
            provider = function()
                return "⣿ "
            end,
            highlight = { colors.blue, colors.bg },
        },

    }
    gls.short_line_left[1] = {
        BufferType = {
            provider = "FileTypeName",
            separator = " ",
            separator_highlight = { "NONE", colors.bg },
            highlight = { colors.blue, colors.bg, "bold" },
        },

    }
    gls.short_line_left[2] = {
        SFileName = {
            provider = "SFileName",
            condition = condition.buffer_not_empty,
            highlight = { colors.fg, colors.bg, "bold" },
        },

    }
    gls.short_line_right[1] = {
        BufferIcon = {
            provider = "BufferIcon",
            highlight = { colors.fg, colors.bg },
        },
    }
end

return M
