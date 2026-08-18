return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    opts = {
      variant = "auto",
      styles = { transparency = true },
      highlight_groups = {
        ["@module.elixir"] = { fg = "foam", bold = true },
        ["@string.special.symbol.elixir"] = { fg = "iris", italic = true },
      },
    },
    init = function()
      if vim.g.hostname ~= vim.g.adrephos then
        vim.cmd("colorscheme rose-pine")
      end
    end,
  }
}
