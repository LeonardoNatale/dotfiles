-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require 'nvim-treesitter.configs'.setup({
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true },
      -- indent = { enable = true },
      ensure_installed = {
        'bash',
        'html',
        'javascript',
        'json',
        'lua',
        'markdown',
        'prisma',
        'python',
        'typescript',
        'tsx',
        'dockerfile',
        'css',
        'toml',
        'vim',
        'vimdoc',
        'yaml',
        'sql',
        'regex'
      },
    })
  end
}
