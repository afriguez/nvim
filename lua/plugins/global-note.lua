return {
	{
		"backdround/global-note.nvim",
		opts = {
			filename = "メモ.md",
			directory = "~/"
		},
		keys = function()
			local gn = require("global-note")
			return {
				{ "<leader>gn", function() gn.toggle_note() end }
			}
		end,
	}
}
