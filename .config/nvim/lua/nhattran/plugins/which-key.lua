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
      b = { name = "Buffers" },
      g = { name = "Git" },
      f = { name = "Find" },
      s = { name = "Split" },
      c = { name = "Code" },
      e = { name = "Explorer" },
      l = { name = "List" },
      m = { name = "Bookmark" },
      n = { name = "Neovim" },
      r = { name = "Refactoring" },
      d = { name = "Diagnostics" },
    }, { prefix = "<leader>" })
  end,
}
