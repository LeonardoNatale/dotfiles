return {
  'smjonas/inc-rename.nvim',
  opts = {},
  vim.keymap.set('n', '<leader>rn', ':IncRename', { desc = '[R]e[n]ame' }),
}
