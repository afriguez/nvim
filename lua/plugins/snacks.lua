return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			notifier = { enabled = true, timeout = 3000 },
			zen = {
				enabled = true,
				toggles = {
					dim = true,
					git_signs = true,
					diagnostics = true,
				}
			}
		},
		keys = function()
			local snacks = require("snacks")
			return {
				{ "<leader>z", function() snacks.zen() end },
				{ "<leader>Z", function() snacks.zen.zoom() end }
			}
		end,
	}
}
