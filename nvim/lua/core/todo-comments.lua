-- Highlight todo, notes, etc in comments.
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    signs = false,
    keywords = {
      FIX = { color = 'error', alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' } },
      NOTE = { color = 'hint', alt = { 'INFO' } },
      TODO = { color = 'info', alt = { '' } },
      WARN = { color = 'warning', alt = { 'IMPORTANT' } },
      TECHNICAL_DEBT = { color = 'warning', alt = { 'TECHINCAL-DEBT' } },
    },
  },
}
