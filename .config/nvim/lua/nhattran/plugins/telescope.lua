return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "ThePrimeagen/harpoon"
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("harpoon")

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Files" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "String" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
        keymap.set("n", "<leader>fm", "<cmd>Telescope harpoon marks<cr>", { desc = "Bookmarks" })

        keymap.set("n", "<leader>mm", require("harpoon.ui").toggle_quick_menu, { desc = "Menu" })
        keymap.set("n", "<leader>ma", require("harpoon.mark").add_file, { desc = "Add" })
        keymap.set("n", "<leader>mn", require("harpoon.ui").nav_next, { desc = "Next" })
        keymap.set("n", "<leader>mp", require("harpoon.ui").nav_prev, { desc = "Previous" })
    end,
}
