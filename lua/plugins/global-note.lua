local afriguez_opts = {
  filename = "メモ.md",
  directory = "~/",
  additional_presets = {
    work = {
      filename = "仕事メモ.md",
      directory = "~/",
      command_name = "WorkNote"
    }
  }
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
      local mappings = {
        { "<leader>gn", gn.toggle_note }
      }

      if vim.g.hostname == vim.g.afriguez then
        table.insert(mappings, { "<leader>wn", function() gn.toggle_note("work") end })
      end

      return mappings
    end,
  }
}
