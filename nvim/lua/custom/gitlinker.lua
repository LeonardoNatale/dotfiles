return {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    { "<leader>gm", "<cmd>GitLink default_branch<cr>",  mode = { "n", "v" }, desc = "[G]it [M]ain link" },
    { "<leader>gc", "<cmd>GitLink current_branch<cr>",  mode = { "n", "v" }, desc = "[G]it [C]urrent [B]ranch link" },
    -- { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git " },
  },
}
