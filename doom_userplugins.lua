-- doom_userplugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- M.plugins {
--   {
--     'user/repository',
--     requires = { 'nvim-lua/telescope.nvim' },
--   },
-- }

local M = {}

M.source = debug.getinfo(1, "S").source:sub(2)

M.plugins = {
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
  { 'machakann/vim-sandwich' },
  { 'lervag/vimtex' },
  { 'rktjmp/lush.nvim' },
  {
  	"ahmedkhalf/project.nvim",
  	config = function()
  		require("project_nvim").setup({
				-- Manual mode doesn't automatically change your root directory, so you have the option to manually do so using `:ProjectRoot` command.
  			-- manual_mode = false,
  			-- Methods of detecting the root directory. **"lsp"** uses the native neovim
  			-- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
  			-- order matters: if one is not detected, the other is used as fallback. You
  			-- can also delete or rearangne the detection methods.
  			detection_methods = { "lsp", "pattern" },

  			-- All the patterns used to detect root dir, when **"pattern"** is in
  			-- detection_methods
  			patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

  			-- Table of lsp clients to ignore by name
  			-- eg: { "efm", ... }
  			ignore_lsp = {},

  			-- Don't calculate root dir on specific directories
  			-- Ex: { "~/.cargo/*", ... }
  			exclude_dirs = {},

  			-- Show hidden files in telescope
  			show_hidden = false,

  			-- When set to false, you will get a message when project.nvim changes your
  			-- directory.
  			silent_chdir = true,

  			-- Path where project.nvim will store the project history for use in
  			-- telescope
  			datapath = vim.fn.stdpath("data"),
  		})
  	end
  },
}

return M

-- vim: sw=2 sts=2 ts=2 noexpandtab
