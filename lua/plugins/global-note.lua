local marija_opts = {
  filename = "メモ.md",
  directory = "~/"
}

return {
  {
    "backdround/global-note.nvim",
    opts = function()
      if vim.g.hostname == "marija" then
        return marija_opts
      end
      return {
        filename = "ノート.md",
        directory = "~/workspace/obsidian/Global Note/"
      }
    end,
    keys = function()
      local gn = require("global-note")
      return {
        { "<leader>gn", function() gn.toggle_note() end }
      }
    end,
  }
}
