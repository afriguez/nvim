return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" }
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "alejandra",
        "cbfmt",
        "clang-format",
        "doctoc",
        "emmet-language-server",
        "eslint-lsp",
        "gopls",
        "htmx-lsp",
        "jdtls",
        "json-lsp",
        "ltex-ls",
        "lua-language-server",
        "nil",
        "prettierd",
        "pylint",
        "rustywind",
        "tailwindcss-language-server",
        "templ",
        "typescript-language-server",
        "zls"
      },
      auto_update = true,
      run_on_start = true,
      start_delay = 5000,
      debounce_hours = 1,
      integrations = {
        ['mason-lspconfig'] = true,
        ['mason-null-ls'] = false,
        ['mason-nvim-dap'] = false,
      },
    }
  }
}
