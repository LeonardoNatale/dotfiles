return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    window = {
      position = 'left',
    },
  },
  vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>'),
}
