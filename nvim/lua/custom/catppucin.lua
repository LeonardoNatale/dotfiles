return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1001,
  config = function()
    -- Function to determine the system appearance on macOS
    local function is_light_mode()
      -- When light mode, the AppleInterfaceStyle key is not presented
      -- so it returns an error. We pipe the error to /dev/null to suppress it.
      local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
      -- Check if the handle is nil
      if handle == nil then
        return false  -- or return nil to indicate an error
      end

      local result = handle:read("*a")
      handle:close()
      return result == ''
    end

    -- Set the theme based on system appearance
    local theme = is_light_mode() and 'latte' or 'macchiato'

    require('catppuccin').setup {
      flavour = theme,
    }

    vim.cmd.colorscheme 'catppuccin'
    vim.cmd.hi 'Comment gui=none'
  end,
}
