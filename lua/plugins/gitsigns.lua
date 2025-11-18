return {
	{
		"lewis6991/gitsigns.nvim",
		keys = function()
			local gs = require("gitsigns")
			return {
				{ "]h", gs.next_hunk },
				{ "[h", gs.prev_hunk },
				{ "<leader>hb", function() gs.blame_line { full = true } end },
				{ "<leader>hd", gs.toggle_deleted }
			}
		end,
	}
}
