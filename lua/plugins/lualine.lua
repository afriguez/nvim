return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"echasnovski/mini.icons",
			"archibate/lualine-time"
		},
		init = function()
			require("mini.icons").mock_nvim_web_devicons()
		end,
		opts = {
			sections = {
				lualine_x = {"ctime", "encoding", "fileformat", "filetype"}
			}
		},
	}
}
