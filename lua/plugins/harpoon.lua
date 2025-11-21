return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
      local hp = require("harpoon")
      return {
        { "<leader>hf", function() hp:list():add() end },
        { "<leader>hl", function() hp.ui:toggle_quick_menu(hp:list()) end },
        { "<C-h>",      function() hp:list():select(1) end },
        { "<C-j>",      function() hp:list():select(2) end },
        { "<C-k>",      function() hp:list():select(3) end },
        { "<C-l>",      function() hp:list():select(4) end },
      }
    end,
  }
}
