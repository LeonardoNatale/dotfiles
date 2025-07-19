return {
  'junnplus/lsp-setup.nvim', -- manage lsp installation and config in one place
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'saghen/blink.cmp', -- load lsp setup when autocompletion engine is ready to integrate
  },
  opts = {
    -- default_mappings = false,
    servers = {
      bashls = {},
      cssls = {},
      biome = {},
      eslint = {},
      html = {},
      jsonls = {},
      tailwindcss = {},
      ts_ls = {},
      prismals = {},
      vimls = {},
      terraformls = {},
      pylsp = {
        autostart = true,
        settings = {
          pylsp = {
            plugins = {
              ruff = {
                enabled = true,
              },
              jedi_completion = { fuzzy = true },
            }
          }
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              -- recognize the `vim` global
              globals = { 'vim' }
            },
            workspace = {
              -- recognize vim api
              library = vim.api.nvim_get_runtime_file("", true)
            }
          },
        }
      },
      jinja_lsp = {}
    },
    on_attach = function()
    end,
  },
  config = function(_, opts)
    require('lsp-setup').setup(opts)
  end
}
