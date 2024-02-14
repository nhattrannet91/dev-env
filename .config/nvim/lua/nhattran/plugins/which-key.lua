return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()

    local wk = require("which-key")
    wk.setup()

    wk.register({
      g = { name = "Git" },
      f = { name = "Find" },
      s = { name = "Split" },
      c = { name = "Code" },
      e = { name = "Explorer" },
      m = { name = "Bookmark" }
    }, { prefix = "<leader>" })
  end,
}
