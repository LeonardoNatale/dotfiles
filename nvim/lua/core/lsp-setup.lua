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

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        -- Jump to the definition of the word under your cursor.
        --  This is where a variable was first declared, or where a function
        --  is defined, etc.
        --  To jump back, press <C-T>.
        map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
        -- Find references for the word under your cursor.
        map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

        -- Jump to the implementation of the word under your cursor.
        --  Useful when your language has ways of declaring types without an
        --  actual implementation.
        map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

        -- Jump to the type of the word under your cursor.
        --  Useful when you're not sure what type a variable is and you want
        --  to see the definition of its *type*, not where it was *defined*.
        map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')

        -- Fuzzy find all the symbols in your current document.
        --  Symbols are things like variables, functions, types, etc.
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

        -- Fuzzy find all the symbols in your current workspace.
        --  Similar to document symbols, except searches over your whole project.
        map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

        -- Execute a code action, usually your cursor needs to be on top of
        -- an error or a suggestion from your LSP for this to activate.
        map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

        -- Opens a popup that displays documentation about the word under
        -- your cursor.
        --  See `:help K` for why this keymap
        map('K', vim.lsp.buf.hover, 'Hover Documentation')

        -- WARN: This is not Goto Definition, this is Goto Declaration.
        --  For example, in C this would take you to the header
        map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
      end
    })
  end
}
