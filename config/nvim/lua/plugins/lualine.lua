return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "auto",              -- matches your colorscheme
      globalstatus = true,         -- one statusline for all splits
      section_separators = "",     -- flat look, no arrow shapes
      component_separators = "|",
    },
  },
}
