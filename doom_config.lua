--https://virtualhelpdesk.cels.anl.gov/docs/linux/home-directories-and-project-directories/web-public_html-directories/ doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim and consists
-- in two Lua tables:
--   1. Doom, this one defines all the Doom nvim configurations that you can
--      tweak to fit your needs or tastes.
--
--   2. Nvim, this one defines all the custom configurations that you want to
--      use in Neovim, e.g. a colorscheme italic_comments global variable
local M = {}

M.source = debug.getinfo(1, "S").source:sub(2)

M.config = {
  doom = {
    -- Autosave
    -- false : Disable autosave
    -- true  : Enable autosave
    -- @default = false
    autosave = true,

    -- Format on save
    -- false : Disable format on save
    -- true  : Enable format on save
    -- @default = false
    fmt_on_save = false,

    -- Disable Vim macros
    -- false : Enable Vim macros
    -- true  : Disable Vim macros
    -- @default = false
    disable_macros = false,

    -- Use netrw as files explorer
    -- false : Use nvim-tree.lua
    -- true  : Use netrw
    -- @default = false
    use_netrw = false,

    -- Enable folding
    -- true : fold is enabled
    -- false : fold is disabled
    -- @default = true
    foldenable = true,

    -- Autosave sessions
    -- false : Disable session autosave
    -- true  : Enable session autosave
    -- @default = false
    autosave_sessions = true,

    -- Autoload sessions
    -- false : Disable session autoload
    -- true  : Enable session autoload
    -- @default = false
    autoload_last_session = false,

    -- Enable Swap files
    -- false : no swap files
    -- true  : enables swap files
    -- @default = false
    swap_files = false,

    -- Undo Directories
    -- the backup variable enables backup related settings (undofile, undodir)
    -- false : ignores undo Directories (this code block will be ignored)
    -- true  : enable undo files/undo dirs.
    -- @default = false
    -- WARNING: if you change this to false and you have an undo dir already,
    --          it will gEMOVE the undodir (loss of data might take place)
    backup = true,

    -- Enable Line wrapping
    -- false : disables line wrapping
    -- true  : enables line wrapping
    -- @default = false
    line_wrap = true,

    -- Enable Show mode ( -- INSERT --, -- NORMAL --, -- VISUAL -- )
    -- false : disables show mode
    -- true  : enables show mode
    -- @default = false
    show_mode = true,

    -- Enable scroll off
    -- false : disables scroll off
    -- true  : enables scroll off
    -- @default = true, @default scrolloff_amount = 4,
    scrolloff = true,
    scrolloff_amount = 4,

    -- Enable mouse
    -- false : disables mouse
    -- true  : enables mouse
    -- @default = true
    mouse = true,

    -- Preserve last editing position
    -- false : Disable preservation of last editing position
    -- true  : Enable preservation of last editing position
    -- @default = false
    preserve_edit_pos = true,

    -- Allow overriding the default Doom Nvim keybinds
    -- false : Default keybinds cannot be overwritten
    -- true  : Default keybinds can be overwritten
    -- @default = true
    allow_default_keymaps_overriding = true,

    -- horizontal split on creating a new file (<Leader>fn)
    -- false : doesn't split the window when creating a new file
    -- true  : horizontal split on creating a new file
    -- @default = true
    new_file_split = true,

    -- enable current line highlight
    -- false : disables current line highlight
    -- true  : enables current line highlight
    -- @default = true
    line_highlight = true,

    -- Automatically split right
    -- false : splits left (vertically)
    -- true  : splits right (vertically)
    -- @default = true
    split_right = true,

    -- Automatically split above
    -- false : splits above (horizontally)
    -- true  : splits below (horizontally)
    -- @default = true
    split_below = true,

    -- Use clipboard outside of vim
    -- false : won't use third party clipboard
    -- true  : enables third part clipboard
    -- @default = true
    clipboard = true,

    -- Enable auto comment (current line must be commented)
    -- false : disables auto comment
    -- true  : enables auto comment
    -- @default = false
    auto_comment = true,

    -- Show indent lines
    -- @default = true
    show_indent = false,

    -- Expand tabs
    -- Specifies if spaces or tabs must be used
    -- false : spaces
    -- true  : tabs
    -- @default = true
    expand_tabs = true,

    -- Set numbering
    -- false : Shows absolute number lines
    -- true  : Shows relative number lines
    -- @default = true
    relative_num = true,

    -- Enable winwidth
    -- false : Manually set win width
    -- true  : Active window auto sets width
    -- @default = false, @default win_width_nr = 85
    win_width = true,
    win_width_nr = 85,

    -- Enable Highlight on yank
    -- false : disables highligh on yank
    -- true  : enables highlight on yank
    -- @default = true
    highlight_yank = true,

    -- Enable guicolors
    -- Enables gui colors on GUI versions of Neovim
    -- @default = true
    enable_guicolors = true,

    -- Tree explorer on the right
    -- Places the Tree explorer buffer to the right when enabled
    -- @default = false
    explorer_right = false,

    -- Show hidden files
    -- @default = true
    show_hidden = true,

    -- Checkupdates on start
    -- @default = false
    check_updates = false,

    -- Auto install plugins on launch, useful if you don't want to run
    -- PackerInstall every time you add a new plugin
    -- @default = true
    auto_install_plugins = true,

    -- Disable dashboard status line (does not work perfectly)
    -- false : disables dashboard status line
    -- true  : enables dashboard status line
    -- @default = true
    dashboard_statline = true,

    -- Show the editing file path in your status line
    -- false : show only file name on status line
    -- true  : show file name and the updir in status line
    statusline_show_file_path = true,

    -- Set the keybindings modules that you want to use
    -- false : disables keybindings module
    -- true  : enables keybindings module
    keybinds_modules = {
      -- Core doom keybindings
      core = true,
      -- Movement keybindings, jump between your windows, buffers and code
      movement = true,
      -- Leader keybindings, a bunch of useful keybindings managed by space key
      -- WARNING: disabling this will break which-key plugin if the plugin is enabled
      leader = true,
      -- Completion and snippets keybindings
      completion = true,
    },

    -- Disable or enable Doom autocommands, this can break some configuration options (they will stop working)
    -- e.g. preserve_edit_pos or autosave
    --
    -- false : enable autocommands module
    -- true  : disable autocommands module
    -- @default = false
    disable_autocommands = false,

    -- Enable LSP diagnostics virtual text
    -- @default = false
    enable_lsp_virtual_text = false,

    -- Use floating windows for plugins manager (packer) operations
    -- @default = false
    use_floating_win_packer = true,

    -- Default indent size
    -- @default = 4
    indent = 4,

    -- Set max cols
    -- Defines the column to show a vertical marker
    -- @default = 80
    max_columns = 120,

    -- Completion box height
    -- @default = 10
    complete_size = 10,

    -- Completion box transparency
    -- 0 = no transparency
    -- 100 = fully transparent
    -- @default = 25
    complete_transparency = 1,

    -- Sidebar sizing
    -- Specifies the default width of Tree Explorer and Tagbar
    -- @default = 25
    sidebar_width = 15,

    -- Set the Terminal width
    -- Applies only to float direction
    -- @default = 70
    terminal_width = 75,

    -- Set the Terminal height
    -- Applies to all directions except window
    -- @default = 20
    terminal_height = 20,

    -- Conceal level
    -- Set Neovim conceal level
    -- 0 : Disable indentline and show all
    -- 1 : Conceal some functions and show indentlines
    -- 2 : Concealed text is completely hidden unless it has a custom replacement
    --     character defined
    -- 3 : Concealed text is completely hidden
    conceallevel = 1,

    -- Logging level
    -- Set Doom logging level
    -- Available levels:
    --   · trace
    --   · debug
    --   · info
    --   · warn
    --   · error
    --   · fatal
    -- @default = 'info'
    logging = "info",

    -- Set the Terminal direction
    -- Available directions:
    --   - vertical
    --   - horizontal
    --   - window
    --   - float
    -- @default = 'horizontal'
    terminal_direction = "float",

    -- NOTE: This will only be activated if 'backup' is true.
    -- We don'recommend you put this outside of neovim so we've restricted to the path: ~/.config/nvim
    -- WARNING: only put the folder name that you want. (eg: undo_dir = '/undodir')
    -- @default_directory = '~/.config/nvim/undodir'
    undo_dir = "/undodir",

    -- Default colorscheme
    -- @default = doom-one
    colorscheme = "molokai",

    -- Background color
    -- @default = dark
    colorscheme_bg = "dark",

    -- Doom One colorscheme settings
    doom_one = {
      -- If the cursor color should be blue
      -- @default = false
      cursor_coloring = true,
      -- If TreeSitter highlighting should be enabled
      -- @default = true
      enable_treesitter = true,
      -- If the comments should be italic
      -- @default = false
      italic_comments = true,
      -- If the telescope plugin window should be colored
      -- @default = true
      telescope_highlights = true,
      -- If the built-in Neovim terminal should use the doom-one
      -- colorscheme palette
      -- @default = false
      terminal_colors = true,
      -- If the Neovim instance should be transparent
      -- @default = false
      transparent_background = false,
    },

    -- Set gui fonts here
    -- @default = "FiraCode Nerd Font", @default font size = 15,
    -- WARNING: Font sizes must be in string format!
    guifont = "VictorMono Nerd Font",
    guifont_size = "15",

    -- Change Which Key background color
    -- can use hex, or normal color names (eg: Red, Gree, Blue)
    -- @default = #202328
    whichkey_bg = "#202020",

    -- Set your custom lsp diagnostic symbols below
    lsp_error = "",
    lsp_warn = "",
    lsp_hint = "",
    lsp_info = "",
    lsp_virtual_text = " ",
    -- 

    -- Set your linters for the programming languages that you use,
    -- see https://github.com/mfussenegger/nvim-lint#available-linters
    linters = {
      c = {},
      cpp = {},
      css = {},
      html = {},
      javascript = {},
      lua = {},
      markdown = {},
      nix = {},
      python = {},
      ruby = {},
      sh = {},
      typescript = {},
    },

    -- Set your dashboard custom colors below
    -- @default = doom emacs' default dashboard colors
    dashboard_custom_colors = {
      header_color = "#1c1c1c",
      center_color = "#00CCFF",
      shortcut_color = "#B2FF59",
      footer_color = "#586268",
    },

    -- Set your custom dashboard header below
    -- @default = doom emacs' default dashboard header
    dashboard_custom_header = {},
  },

  nvim = {
    -- Set custom Neovim global variables
    -- @default = {}
    -- example:
    --   {
    --     ['sonokai_style'] = 'andromeda',
    --     ['modelineexpr'] = true,
    --   }
    --
    --   modeline feature was turned off to reduce security exploit surfaces.
    --   Since modeline now uses whitelist approach since nvim 0.4 /vim 8.1,
    --   enabling this is as safe as external packages such as securemodelines.
    --   See https://github.com/neovim/neovim/issues/2865
    --
    global_variables = {
			['pumblend'] = 0,
			['sonokai_style'] = 'shusia',
			['minimap_width'] = 8,
			['minimap_auto_start'] = false,
			['minimap_auto_start_win_enter'] = 0,
			['modelineexpr'] = true,
		},
		-- Set custom autocommands
    -- @default = {}
    -- example:
    --   augroup_name = {
    --      { 'BufNewFile,BufRead', 'doom_modules.lua', 'set ft=lua'}
    --   }
    autocmds = {},

    -- Set custom key bindings
    -- @default = {}
    -- example:
    --   {
    --      {'n', 'ca', ':Lspsaga code_action<CR>', options}
    --   }
    --
    --   where
    --     'n' is the map scope
    --     'ca' is the map activator
    --     ':Lspsaga ...' is the command to be executed
    --     options is a Lua table containing the mapping options, e.g.
    --     { silent = true }, see ':h map-arguments'.
    mappings = {
        { 'n', 'ca', ':Lspsaga codeaction<CR>', },
        { 'n', 'gr', ':Lspsaga rename<CR>', },
        { 'n', 'S', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], },
        { 'n', 'L', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], },
      },

    -- Set custom commands
    -- @default = {}
    -- example:
    --   {
    --      'echo "Hello, custom commands!"'
    --   }
    commands = {},

    -- Set custom functions
    -- @default = {}
    -- example:
    --   {
    --      {
    --         hello_custom_func = function()
    --           print("Hello, custom functions!")
    --         end,
    --         -- If the function should be ran on neovim launch or if it should
    --         -- be a global function accesible from anywhere
    --         run_on_start = false,
    --      },
    --   }
    functions = {},

    -- Set custom options
    -- @default = {}
    -- example:
    --   {
    --      ['shiftwidth'] = 4
    --   }
  options = {
		  ["shiftwidth"] = 4,
			["expandtab"] = true,
			["foldmethod"] = "expr",
			["smartcase"] = true,
			["ignorecase"] = true,
			["smartindent"] = true,
		},
	},
}

return M

-- vim: sw=2 sts=2 ts=2 fdm=indent noexpandtab
