vim.lsp.config('lua_ls', {
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
        command = { "nixpkgs-fmt" }
      }
    }
  }
})
