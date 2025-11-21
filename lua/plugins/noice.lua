return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = { progress = { enabled = false } },
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = "50%",
          },
          size = {
            width = "75%",
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 8,
            col = "50%",
          },
          size = {
            width = "75%",
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    },
    keys = function()
      return {
        { "<leader>nd", "<cmd>NoiceDismiss<cr>" }
      }
    end,
    dependencies = { "MunifTanjim/nui.nvim" }
  }
}
