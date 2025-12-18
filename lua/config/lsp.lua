vim.lsp.config('emmylua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

vim.lsp.config('dartls', {
  cmd = { "dart", "language-server", "--protocol=lsp" },
})

vim.lsp.config("qmlls", {
  cmd = { "qmlls" }
})

vim.lsp.config("elixir-ls", {
  cmd = { "elixir-ls" }
})

vim.lsp.config('ltex', {
  settings = {
    ltex = {
      enabled = {
        "bibtex",
        "gitcommit",
        "org",
        "tex",
        "restructuredtext",
        "rsweave",
        "latex",
        "quarto",
        "rmd",
        "context",
        "mail",
        "plaintext",
        -- "markdown"
      },
    }
  }
})

vim.lsp.config('nil_ls', {
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixfmt" }
      }
    }
  }
})
