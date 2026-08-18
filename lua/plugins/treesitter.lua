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
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      auto_install = true,
      ignore_install = { "all", "mlir" }
    },
    init = function ()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function ()
          -- Enable treesitter highlighting and disable regex syntax
          pcall(vim.treesitter.start)
          -- Enable treesitter-based indentation
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      })
    end,
    main = "nvim-treesitter"
  }
}
