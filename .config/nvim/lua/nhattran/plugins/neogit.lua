return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim",        -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = function()
    local neogit = require("neogit")

    neogit.setup({
      mappings = {
        status = {
        }
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>gs", "<cmd>Neogit kind=vsplit<CR>", { desc = "Git status" }) -- restore last workspace session for current directory
  end,
}
