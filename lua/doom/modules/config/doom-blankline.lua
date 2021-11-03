return function()
  local config = require("doom.core.config").config
  vim.opt.termguicolors = true
  vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
  vim.opt.list = true
  vim.opt.listchars:append("tab:⋅⋅⋅")
  -- vim.opt.listchars:append("eol:↴")

  require("indent_blankline").setup({
    enabled = config.doom.show_indent,
    char = "│",
    -- If treesitter plugin is enabled then use its indentation
    use_treesitter = require("doom.utils").check_plugin("nvim-treesitter", "opt"),
    show_first_indent_level = false,
    filetype_exclude = { "help", "dashboard", "packer", "norg", "DoomInfo" },
    buftype_exclude = { "terminal" },
    -- space_char_blankline = " ",
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    },
  })
end
