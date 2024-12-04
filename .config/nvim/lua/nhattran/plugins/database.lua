return {
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {

      { "tpope/vim-dotenv", lazy = true },
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      -- vim.g.db_ui_debug = 1
    end,
  },
}
