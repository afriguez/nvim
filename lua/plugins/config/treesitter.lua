require('nvim-treesitter.configs').setup {
	ensure_installed = { "eex", "heex", "html", "surface", "go" },
	auto_install = true,
	highlight = { enable = true },
	ignore_install = { "all" }
}
