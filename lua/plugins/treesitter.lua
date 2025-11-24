return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    init = function()
      local TS = require("nvim-treesitter")
      TS.install(
        { "go", "latext", "gitcommit" }
      )

      local langs = TS.get_installed()
      vim.notify(vim.inspect(langs), vim.log.levels.INFO)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = langs,
        callback = function()
          vim.treesitter.start()
          vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  }
}
