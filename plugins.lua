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
  {
    'ActivityWatch/aw-watcher-vim',
  },
  {
    'wakatime/vim-wakatime',
  },
  {
    'ap/vim-css-color',
  },
  {
    'lervag/vimtex',
  },
  {
    'jakewvincent/texmagic.nvim',
  },
  {
    'ellisonleao/glow.nvim',
  },
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
    'wfxr/code-minimap',
  },
  {
    'AndrewRadev/splitjoin.vim'
  },
  {
    'sainnhe/sonokai'
  },
}
