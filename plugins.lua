-- plugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- return {
--     {
--         'user/repository',
--         requires = { 'nvim-lua/telescope.nvim' },
--     },
-- }

return {
  { 'ActivityWatch/aw-watcher-vim' },
  { 'wakatime/vim-wakatime' },
  { 'ap/vim-css-color' },
  { 'mbbill/undotree' },
  {
    'jakewvincent/texmagic.nvim',
    config = function()
      require('texmagic').setup({
        engines = {
          pdflatex = {
            -- This has the same name as a default engine but would be preferred
            -- over the same-name default if defined
            executable = "latexmk",
            args = {
              "-pdflatex",
              "-interaction=nonstopmode",
              "-synctex=1",
              "-outdir=.build",
              "-pv",
              "%f"
            },
            isContinuous = true
          },
          lualatex = {
            -- This is *not* one of the defaults, but it can be called via
            -- magic comment if defined here
            executable = "latexmk",
            args = {
              "-pdflua",
              "-interaction=nonstopmode",
              "-synctex=1",
              "-pv",
              "%f"
            },
            isContinuous = true
          }
        }
      })
    end,
  },
  { 'ellisonleao/glow.nvim' },
  {
    'folke/lsp-colors.nvim',
    config = function()
      require("lsp-colors").setup({
        Error = "#F20052",
        Warning = "#FFFF00",
        Information = "#00CCFF",
        Hint = "#63FF51",
      })
    end,
  },
  {
    'glepnir/lspsaga.nvim',
    requires = { 'neovim/nvim-lspconfig' },
  },
  { 'wfxr/code-minimap' },
  { 'AndrewRadev/splitjoin.vim' },
  { 'sainnhe/sonokai' },
  {
    "nvim-treesitter/playground",
    cmd = "TSHighlightCapturesUnderCursor",
  },
  { 'kosayoda/nvim-lightbulb' },
  { 'lervag/vimtex' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  {
    'hrsh7th/nvim-cmp',
    -- config = require("custom.plugin.cmp"),
    config = function()
      require('custom.plugin.cmp')
    end,
    after = "nvim-lspconfig",
  },
  { 'saadparwaiz1/cmp_luasnip', },
  {
    'code-biscuits/nvim-biscuits',
    config = function()
      require('nvim-biscuits.').setup({
        default_config = {
          max_length = 12,
          prefix_string = " 📎 "
        },
        language_config = {
          html = {
            prefix_string = " 🌐 "
          },
          javascript = {
            prefix_string = " ✨ ",
            max_length = 80
          },
          python = {
            prefix_string = " 🐍 ",
            max_length = 80,
          },
        }
      })
    end
  }
}
