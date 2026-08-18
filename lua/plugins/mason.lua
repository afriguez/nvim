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
    opts = function()
      local tools = {
        "cbfmt",
        "clang-format",
        "doctoc",
        "emmet-language-server",
        "eslint-lsp",
        "jdtls",
        "json-lsp",
        "ltex-ls",
        "emmylua_ls",
        "nil",
        "prettierd",
        "ruff",
        "basedpyright",
        "rustywind",
        "tailwindcss-language-server",
        "templ",
        "typescript-language-server",
        "zls"
      }
      if vim.g.hostname ~= vim.g.adrephos then
        table.insert(tools, "gopls")
      end
      return {
        ensure_installed = tools,
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
    end
  }
}
