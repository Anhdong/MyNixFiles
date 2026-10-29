return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    spec = {
      { "<leader>b", group = "buffer" },
      { "<leader>c", group = "code" },
      { "<leader>w", group = "window" },
      { "<leader>x", group = "diagnostics" },
      { "<leader>t", group = "terminal" },
    },
  }
}
