return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim",        -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = true

--    keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>", { desc = "Git status" }) -- Open the status buffer in a new tab
}
