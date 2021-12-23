return function()
  local mappings = require("doom.utils.mappings")
  local luasnip = require("luasnip")

  luasnip.config.set_config({
    history = true,
    -- Update more often, :h events for more info.
    -- updatevents = "InsertLeave",
    updateevents = "TextChanged,TextChanged",
  })

  require("luasnip/loaders/from_vscode").load()

  --- <tab> to jump to next snippet's placeholder
  local function on_tab()
    return luasnip.jump(1) and "" or mappings.t("<C-Tab>")
  end

  --- <s-tab> to jump to next snippet's placeholder
  local function on_s_tab()
    return luasnip.jump(-1) and "" or mappings.t("<C-S-Tab>")
  end

  mappings.imap("<C-Tab>", on_tab, { expr = true })
  mappings.smap("<C-Tab>", on_tab, { expr = true })
  mappings.imap("<C-S-Tab>", on_s_tab, { expr = true })
  mappings.smap("<C-S-Tab>", on_s_tab, { expr = true })
end
