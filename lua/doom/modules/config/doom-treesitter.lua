return function()
  local has_value = require("doom.utils").has_value
  local doomrc = require("doom.core.config.doomrc").load_doomrc()
  local functions = require("doom.core.functions")

  local function get_ts_parsers(languages)
    local langs = {}

    for _, lang in ipairs(languages) do
      -- If the lang is config then add parsers for JSON, YAML and TOML
      if lang == "config" then
        table.insert(langs, "json")
        table.insert(langs, "yaml")
        table.insert(langs, "toml")
      else
        lang = lang:gsub("%s+%+lsp", ""):gsub("%s+%+debug", "")
        table.insert(langs, lang)
      end
    end

    -- Add TSX parser if TypeScript is enabled
    if has_value(langs, "typescript") then
      table.insert(langs, "tsx")
    end
    return langs
  end

  -- Set up treesitter for Neorg
  local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
  parser_configs.norg = {
    install_info = {
      url = "https://github.com/nvim-neorg/tree-sitter-norg",
      files = { "src/parser.c", "src/scanner.cc" },
      branch = "main",
    },
  }
  -- selene: allow(undefined_variable)
  if packer_plugins and packer_plugins["neorg"] then
    table.insert(doomrc.langs, "norg")
  end

  -- macos uses wrong c version
  require("nvim-treesitter.install").compilers = { "gcc" }

  require("nvim-treesitter.configs").setup({
    ensure_installed = get_ts_parsers(doomrc.langs),
    autopairs = {
      enable = functions.is_plugin_disabled("autopairs") and false or true,
    },
    highlight = {
        enable = true,
        use_languagetree = true,
        custom_captures = {
            -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
            ["foo.bar"] = "Identifier",
        },
        -- Setting this to true or a list of languages will run `:h syntax` and tree-sitter at the same time.
        additional_vim_regex_highlighting = true,
    },
    incremental_selection = {
      enable = true, keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false, -- Whether the query persists across vim sessions
      keybindings = {
        toggle_query_editor = 'o',
        toggle_hl_groups = 'i',
        toggle_injected_languages = 't',
        toggle_anonymous_nodes = 'a',
        toggle_language_display = 'I',
        focus_language = 'f',
        unfocus_language = 'F',
        update = 'R',
        goto_node = '<cr>',
        show_help = '?',
      },
    },
    indent = { enable = true, disable={'python', } },
    tree_docs = { enable = true },
    context_commentstring = { enable = true },
    autotag = {
      enable = true,
      filetypes = {
        "html",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "svelte",
        "vue",
        "markdown",
      },
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
      },
    },
    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BufWrite", "CursorHold"},
    },
    rainbow = {
        enable = true,
        colors = {"#65FFDA", "#FFFF00",  "#B2FF59", "#FF4081", "#0CF",  "#E040FB", "#FD971F"}, -- table of hex strings
    },
  })
end
