return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    disabled_keys = {
      -- arrow keys used to move between windows
      ['<Up>'] = {},
      ['<Down>'] = {},
      ['<Left>'] = {},
      ['<Right>'] = {},
    },
  },
}
