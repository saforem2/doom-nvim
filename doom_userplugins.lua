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
--
--[[ -- Example
-- use {
  'myusername/example',        -- The plugin location string
  -- The following keys are all optional
  disable = boolean,           -- Mark a plugin as inactive
  as = string,                 -- Specifies an alias under which to install the plugin
  installer = function,        -- Specifies custom installer. See "custom installers" below.
  updater = function,          -- Specifies custom updater. See "custom installers" below.
  after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
  rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
  opt = boolean,               -- Manually marks a plugin as optional.
  branch = string,             -- Specifies a git branch to use
  tag = string,                -- Specifies a git tag to use
  commit = string,             -- Specifies a git commit to use
  lock = boolean,              -- Skip updating this plugin in updates/syncs. Still cleans.
  run = string, function, or table, -- Post-update/install hook. See "update/install hooks".
  requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
  rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
  config = string or function, -- Specifies code to run after this plugin is loaded.
  -- The setup key implies opt = true
  setup = string or function,  -- Specifies code to run before this plugin is loaded.
  -- The following keys all imply lazy-loading and imply opt = true
  cmd = string or list,        -- Specifies commands which load this plugin. Can be an autocmd pattern.
  ft = string or list,         -- Specifies filetypes which load this plugin.
  keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
  event = string or list,      -- Specifies autocommand events which load this plugin.
  fn = string or list          -- Specifies functions which load this plugin.
  cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
  module = string or list      -- Specifies Lua module names for require. When requiring a string which starts
                               -- with one of these module names, the plugin will be loaded.
  module_pattern = string/list -- Specifies Lua pattern of Lua module names for require. When
  requiring a string which matches one of these patterns, the plugin will be loaded.
} ]]

local M = {}

M.source = debug.getinfo(1, "S").source:sub(2)

M.plugins = {
  { 'ActivityWatch/aw-watcher-vim' },
  { 'wakatime/vim-wakatime' },
  { 'ap/vim-css-color' },
  { 'mbbill/undotree' },
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
  			manual_mode = false,
  			detection_methods = { "lsp", "pattern" },
  			patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
  			ignore_lsp = {},
  			exclude_dirs = {},
  			show_hidden = false,
  			silent_chdir = false,
  			datapath = vim.fn.stdpath("data"),
  		})
  	end
  },
  { "patstockwell/vim-monokai-tasty" },
  { 'vim-python/python-syntax' },
  { 'Vimjas/vim-python-pep8-indent' },
  {
  	"dccsillag/magma-nvim",
  	run = ":UpdateRemotePlugins",
  },
  {
  	"rcarriga/nvim-notify",
  	config = function()
			require("notify").setup({
				-- Animation style (see below for details)
				stages = "fade_in_slide_out",
				-- Function called when a new window is opened, use for changing win settings/config
				on_open = nil,
				-- Function called when a window is closed
				on_close = nil,
				-- Render function for notifications. See notify-render()
				render = "default",
				-- Default timeout for notifications
				timeout = 5000,
				-- For stages that change opacity this is treated as the highlight
				-- behind the window
				-- Set this to either a highlight group or an RGB hex value e.g. "#000000"
				background_colour = "Normal",
  			-- Minimum width for notification windows
  			minimum_width = 50,
  			-- Icons for the different levels
  			icons = {
    			ERROR = "",
    			WARN = "",
    			INFO = "",
    			DEBUG = "",
    			TRACE = "✎",
  			},
			})
		end
  },
  {
  	"numirias/semshi",
  	run = ":UpdateRemotePlugins",
  }
}

return M

-- vim: sw=2 sts=2 ts=2 noexpandtab
