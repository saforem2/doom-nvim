-- doomrc - Doom nvim configurations file
--
-- The doomrc controls what Doom nvim plugins modules are enabled and what
-- features are being used.
--
-- Comment out a plugin to enable it and comment a non-commented one to
-- disable and uninstall it.
--
-- NOTE: you can open the Doom nvim documentation by pressing `SPC d h`. You
-- will find a table of content where you will see a "Doomrc" section under the
-- "Configuration" one. In that section you will find a comprehensive list of
-- the available modules and all their supported flags.

local doom = {
  ui = {
    "dashboard",          -- Start screen
    "doom-themes",     -- Additional doom emacs' colorschemes
    "statusline",         -- Statusline
    "tabline",            -- Tabline, shows your buffers list at top
    -- "zen",             -- Distraction free environment
    "which-key",          -- Keybindings popup menu like Emacs' guide-key
    -- "indentlines",     -- Show indent lines
    "show_registers",  -- popup that shows register contents
  },
  doom = {
    -- "neorg",           -- Life Organization Tool
    "runner",          -- Open a REPL for the current language or run the current file
    -- "compiler",        -- Compile (and run) your code with just pressing three keys!
  },
  editor = {
    "autopairs",          -- Autopairs
    "auto-session",       -- A small automated session manager for Neovim
    "dap",                -- Debug Adapter Protocol
    "editorconfig",       -- EditorConfig support for Neovim
    "explorer",           -- Tree explorer
    "formatter",          -- File formatting
    "gitsigns",           -- Git signs
    "kommentary",         -- Comments plugin
    "linter",             -- Asynchronous linter, see errors in your code on the fly
    "lsp",                -- Language Server Protocols
    "minimap",         -- Code minimap, requires github.com/wfxr/code-minimap
    -- "ranger",             -- Ranger File Browser, requires ranger file browser
    "snippets",           -- Snippets
    "symbols",            -- LSP symbols and tags
    "telescope",          -- Highly extendable fuzzy finder over lists
    "terminal",           -- Terminal for Neovim (NOTE: needed for runner and compiler)
    "trouble",            -- A pretty list to help you solve all the trouble your code is causing
  },
  langs = {
    -- To enable the language server for a language just add the +lsp flag
    -- at the end, e.g. 'rust +lsp'. This will install the rust TreeSitter
    -- parser and rust-analyzer
    --
    "html +lsp",            -- HTML support
    "css +lsp",             -- CSS support
    "javascript +lsp",      -- JavaScript support
    "typescript +lsp",      -- TypeScript support
    "bash +lsp",            -- The terminal gods language
    "python +lsp",     -- Python support + lsp
    "ruby +lsp",            -- Look ma, I love the gems!
    "lua +lsp",                -- Support for our gods language
    -- "elixir",          -- Build scalable and maintainable software
    -- "haskell",         -- Because Functional programming is fun, isn't it?

    "rust +lsp",       -- Let's get rusty!
    "go +lsp",              -- Hello, gopher
    "cpp +lsp",             -- C++ support
    -- "java",            -- Java support

    "config",          -- Configuration files (JSON, YAML, TOML)
    -- "dockerfile",      -- Do you like containers, right?
  },
  utilities = {
    -- "suda",            -- Write and read files without sudo permissions
    -- "lazygit",         -- LazyGit integration for Neovim, requires LazyGit
    "neogit",          -- Magit for Neovim
    "superman",           -- Read Unix man pages faster than a speeding bullet!
    "todo_comments",      -- Highlight, list and search todo comments in your projects
    "colorizer",       -- Fastest colorizer for Neovim
    "range-highlight",    -- hightlights ranges you have entered in commandline
  },
  web = {
    "restclient",      -- A fast Neovim http client
    -- "firenvim",        -- requires firenvim web extension; change fontsize by increasing guifontsize in doom_config
    "colorizer",       -- Fastest colorizer for Neovim
  }
}

return doom
