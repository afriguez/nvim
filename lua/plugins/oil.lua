return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    opts = {
      columns = { "icon" },
      win_options = {
        signcolumn = "yes:2",
      },
    },
    lazy = false,
    keys = function()
      return {
        { "<C-n>", "<cmd>Oil<cr>" }
      }
    end,
  },
  {
    "refractalize/oil-git-status.nvim",
    dependencies = {
      "stevearc/oil.nvim",
    },
    config = true,
  },
}
