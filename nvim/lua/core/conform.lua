return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    default_format_opts = {
      lsp_format = "prefer", -- use LSP formatting if available, fallback to formatters defined below
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff" },
      javascript = { "biome-check", "eslint", stop_after_first = true },
      json = { "biome" },
      sql = { 'sql_formatter' },
      terraform = { 'terraform_fmt' },
    },
    format_on_save = { timeout_ms = 500 },
    formatters = {
      -- additional options here
    },
  },
  init = function()
    -- Allows using native neovim formatting utils like gq
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
