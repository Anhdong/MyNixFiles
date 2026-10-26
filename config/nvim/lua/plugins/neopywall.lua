return {
  "RedsXDD/neopywal.nvim",
  name = "neopywal",
  lazy = false,
  priority = 1000,
  opts = {
	use_palette = 'wallust',
  },
  config = function(_, opts)
    local neopywal = require("neopywal")
    neopywal.setup(opts)
    vim.cmd.colorscheme("neopywal")
  end,
}
