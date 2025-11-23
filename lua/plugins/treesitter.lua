return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensured_installed = {
        "go",
        "latex",
        "gitcommit"
      },
      auto_install = true,
      highlight = {
        enabled = true
      },
    },
    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('Highlighter', {}),
        pattern = 'markdown',
        callback = function(args)
          vim.treesitter.start(args.buf)
        end,
      })
    end,
  }
}
