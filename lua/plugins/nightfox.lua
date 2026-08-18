return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    cond = vim.g.hostname == vim.g.adrephos,
    opts = {
      options = {
        transparent = true,
      },
    },
    init = function()
      vim.cmd("colorscheme carbonfox")
    end,
  }
}
