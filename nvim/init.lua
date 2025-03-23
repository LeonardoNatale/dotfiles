-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- TECHNICAL_DEBT:
-- there is probably a more lazy.nvim way to do this

require 'config.options'
require 'config.keymaps'
require 'config.autocmd'

-- Install Lazy package manager.
require('lazy').setup {
  'tpope/vim-sleuth',
  'tpope/vim-sensible', -- sensible default config
  { import = 'core' },
  { import = 'custom' },
}
