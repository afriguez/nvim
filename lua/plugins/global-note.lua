return {
  {
    "backdround/global-note.nvim",
    opts = {
      filename = "ノート.md",
      directory = "~/workspace/obsidian/Global Note/"
    },
    keys = function()
      local gn = require("global-note")
      return {
        { "<leader>gn", function() gn.toggle_note() end }
      }
    end,
  }
}
