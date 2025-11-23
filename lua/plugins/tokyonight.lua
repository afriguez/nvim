return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      light_style = "day",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        floats = "transparent",
      },
      day_brightness = 0.3,
      dim_inactive = false,
      lualine_bold = false,
    },
    init = function()
      if vim.g.hostname ~= "marija" then
        vim.cmd("colorscheme tokyonight")
      end
    end,
  }
}
