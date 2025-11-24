return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-context",
        main = "treesitter-context",
        opts = {
          multiline_treshold = 1,
          max_lines = 1
        }
      }
    },
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
