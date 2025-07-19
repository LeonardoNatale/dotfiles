return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    default_format_opts = {
      lsp_format = "fallback", -- use LSP formatting if available, fallback to formatters defined below
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_fix", "ruff_format" },
      javascript = { "biome", "biome-check", "biome-organize-imports", "eslint_d" },
      javascriptreact = { "biome", "biome-check", "biome-organize-imports", "eslint_d" },
      typescript = { "biome", "biome-check", "biome-organize-imports", "eslint_d" },
      typescriptreact = { "biome", "biome-check", "biome-organize-imports", "eslint_d" },
      json = { "biome", "biome-check" },
      sql = { "sqruff" },
      ["sql.jinja"] = { "sqruff" },
      terraform = { 'terraform_fmt' },
    },
    format_on_save = { timeout_ms = 500 },
  },
  init = function()
    -- Allows using native neovim formatting utils like gq
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
