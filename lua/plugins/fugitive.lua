return {
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = function()
      local mappings = {
        { "<leader>gs",  "<cmd>Git<cr>" },
        { "<leader>gj",  "<cmd>diffget //3<cr>" },
        { "<leader>gf",  "<cmd>diffget //2<cr>" },
        { "<leader>gk",  "<cmd>Git commit<cr>" },
        { "<leader>gvd", "<cmd>Gvdiffsplit!<cr>" },
      }

      if vim.g.hostname == "marija" then
        table.insert(mappings, { "<leader>P", "<cmd>Git pull --rebase<cr>" })
        table.insert(mappings, { "<leader>p", ":Git push -u origin " })
      end

      return mappings
    end,
  }
}
