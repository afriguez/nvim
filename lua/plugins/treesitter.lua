return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    init = function()
      require('nvim-treesitter').install(
        { "go", "latext", "gitcommit" }
      ):wait(300000)

      vim.api.nvim_create_autocmd("BufReadPost", {
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  }
}
