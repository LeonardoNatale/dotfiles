-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  -- Sets the loading event to 'VimEnter'
  event = 'VimEnter',
  -- This is the function that runs, AFTER loading
  config = function()
    require('which-key').setup()
    -- Document existing key chains
    require('which-key').add {
      { "<leader>c",  group = "[C]ode" },
      { "<leader>c_", hidden = true },
      { "<leader>d",  group = "[D]ocument" },
      { "<leader>d_", hidden = true },
      { "<leader>r",  group = "[R]ename" },
      { "<leader>r_", hidden = true },
      { "<leader>s",  group = "[S]earch" },
      { "<leader>s_", hidden = true },
      { "<leader>w",  group = "[W]orkspace" },
      { "<leader>w_", hidden = true },
      { "<leader>g",  group = "[G]it" },
      { "<leader>g_", hidden = true },
      { "<leader>j", group = "[J]ason"},
      { "<leader>j_", hidden = true }
    }
  end,
}
