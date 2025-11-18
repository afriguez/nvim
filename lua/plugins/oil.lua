return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-mini/mini.icons" },
		opts = {
			columns = { "icon" }
		},
		lazy = false,
		keys = function()
			return {
				{ "<C-n>", "<cmd>Oil<cr>" }
			}
		end,
	}
}
