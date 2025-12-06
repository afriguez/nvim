return {
  {
    "heilgar/nvim-http-client",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim"
    },
    event = "VeryLazy",
    ft = { "http", "rest" },
    keys = {
      { "<leader>Hf",  "<cmd>HttpEnvFile<cr>" },
      { "<leader>He",  "<cmd>HttpEnv<cr>" },
      { "<leader>Hr",  "<cmd>HttpRun<cr>" },
      { "<leader>Ha",  "<cmd>HttpRunAll<cr>" },
      { "<leader>Hx",  "<cmd>HttpStop<cr>" },
      { "<leader>Hv",  "<cmd>HttpVerbose<cr>" },
      { "<leader>Hp",  "<cmd>HttpProfiling<cr>" },
      { "<leader>Hd",  "<cmd>HttpDryRun<cr>" },
      { "<leader>Hc",  "<cmd>HttpCopyCurl<cr>" },
      { "<leader>Hs",  "<cmd>HttpSaveResponse<cr>" },
      { "<leader>Hg",  "<cmd>HttpSetProjectRoot<cr>" },
      { "<leader>Hgg", "<cmd>HttpGetProjectRoot<cr>" },
    },
    init = function()
      require("http_client").setup({
        create_keybindings = false,
      })
      if pcall(require, "telescope") then
        require("telescope").load_extension("http_client")
      end
    end,
  }
}
