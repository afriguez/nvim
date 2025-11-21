return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = function()
    return {
      scope = {
        enabled = true,
        highlight = { "ScopeGray" },
      },
      indent = {
        char = "▏",
      },
    }
  end,
  config = function(_, opts)
    local hooks = require "ibl.hooks"

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "ScopeGray", { fg = "#a0a0B0" })
    end)

    require("ibl").setup(opts)
  end,
}
