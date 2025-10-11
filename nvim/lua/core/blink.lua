return {
  'saghen/blink.cmp',
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {

    keymap = {
      ['<Tab>'] = {
        'snippet_forward',
        function() -- sidekick next edit suggestion
          return require('sidekick').nes_jump_or_apply()
        end,
        function() -- copilot.lua inline suggestions
          local copilot_ok, copilot = pcall(require, 'copilot.suggestion')
          if copilot_ok and copilot.is_visible() then
            copilot.accept()
            return true
          end
        end,
        'fallback',
      },
    },
  },
}
