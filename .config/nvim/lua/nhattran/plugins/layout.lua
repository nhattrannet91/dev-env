return {
  {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
  },
  {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      },
      config = function()

        require("neo-tree").setup()

        local keymap = vim.keymap
        keymap.set("n", "<leader>et", "<cmd>Neotree toggle show buffers left<CR>", { desc = "Explorer toggle" }) -- restore last workspace session for current directory
      end
  },
  {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        require("lualine").setup({
          options = { theme = 'solarized_dark' },
        })
      end
  },
  {
    -- To refine popup stuffs
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  {
    -- To display notifications
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    },
  }
}
