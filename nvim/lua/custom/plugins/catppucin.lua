return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1001,
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato',
    }

    vim.cmd.colorscheme 'catppuccin'
    vim.cmd.hi 'Comment gui=none'
  end,
}
