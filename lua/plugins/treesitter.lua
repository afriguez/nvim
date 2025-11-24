return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      auto_install = true,
      highlight = { enable = true },
      ignore_install = { "all" }
    },
    main = "nvim-treesitter.configs"
  }
}
