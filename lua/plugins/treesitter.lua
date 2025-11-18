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
			},
			highlight = {
				enabled = true
			}
		}
	}
}
