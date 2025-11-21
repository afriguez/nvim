return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(bufnr)
        local ft = vim.bo[bufnr].filetype
        if ft == 'markdown' then
          vim.schedule(function()
            package.loaded.gitsigns.detach(bufnr)
          end)
          return
        end
      end
    },
    keys = function()
      local gs = require("gitsigns")
      return {
        { "]h",         gs.next_hunk },
        { "[h",         gs.prev_hunk },
        { "<leader>hb", function() gs.blame_line { full = true } end },
        { "<leader>hd", gs.toggle_deleted }
      }
    end,
  }
}
