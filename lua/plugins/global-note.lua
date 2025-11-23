local afriguez_opts = {
  filename = "メモ.md",
  directory = "~/"
}

return {
  {
    "backdround/global-note.nvim",
    opts = function()
      if vim.g.hostname == vim.g.afriguez then
        return afriguez_opts
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
