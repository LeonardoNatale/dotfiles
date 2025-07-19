return {
  'HiPhish/jinja.vim', -- Jinja template syntax support
  config = function()
    -- Configure filetype detection for .sql.jinja files
    vim.filetype.add({
      extension = {
        ['sql.jinja'] = 'sql.jinja',
      },
      pattern = {
        ['.*%.sql%.jinja'] = 'sql.jinja',
      },
    })

    -- Additional autocmd to ensure proper filetype detection
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = "*.sql.jinja",
      callback = function()
        vim.bo.filetype = "sql.jinja"
      end,
    })
  end
}
