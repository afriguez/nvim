return {
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = function()
      local mappings = {
        { "<leader>gs",  ":Git<cr>" },
        { "<leader>gj",  ":diffget //3<cr>" },
        { "<leader>gf",  ":diff //2<cr>" },
        { "<leader>gk",  ":Git commit<cr>" },
        { "<leader>gvd", ":Gvdiffsplit!<cr>" },
      }

      if vim.g.hostname == "marija" then
        table.insert(mappings, { "<leader>P", ":Git pull --rebase<cr>" })
        table.insert(mappings, { "<leader>p", ":Git push -u origin " })
      end

      return mappings
    end,
  }
}
