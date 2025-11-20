return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      auto_install = true,
      ensured_installed = {
        "go",
        "eex",
        "heex",
        "html",
        "surface",
        "latex",
        "markdown",
        "markdown_inline",
      },
      highlight = {
        enabled = true
      }
    },
    config = function()
      require('nvim-treesitter').install({ 'markdown', 'markdown_inline' })
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('Highlighter', {}),
        pattern = 'markdown',
        callback = function(args)
          vim.treesitter.start(args.buf)
        end,
      })
    end,
  },
}
