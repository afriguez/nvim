require('mason').setup({
	ui = {
		icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
	}
})

require('lspconfig').dartls.setup({
	cmd = { "dart", "language-server", "--protocol=lsp" }
})

local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup()
mason_lspconfig.setup_handlers {
	function (server_name)
		require('lspconfig')[server_name].setup {}
	end
}
