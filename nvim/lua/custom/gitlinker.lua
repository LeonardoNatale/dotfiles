return {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    { "<leader>glm", "<cmd>GitLink default_branch<cr>",  mode = { "n", "v" }, desc = "[G]it [L]ink main" },
    { "<leader>glb", "<cmd>GitLink current_branch<cr>",  mode = { "n", "v" }, desc = "[G]it [L]ink branch" },
    -- { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git " },
  },
}
