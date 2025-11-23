return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    opts = {
      variant = "auto",
      styles = { transparency = true }
    },
    init = function()
      if vim.g.hostname == vim.g.afriguez then
        vim.cmd("colorscheme rose-pine")
      end
    end,
  }
}
