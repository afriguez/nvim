return {
	{
		"tpope/vim-fugitive",
		cmd = "Git",
		keys = function()
			return {
				{ "<leader>gs", ":Git<cr>" },
				{ "<leader>gj", ":diffget //3<cr>" },
				{ "<leader>gf", ":diff //2<cr>" },
				{ "<leader>gk", ":Git commit<cr>" },
				{ "<leader>gvd", ":Gvdiffsplit!<cr>" },
				{ "<leader>P", ":Git pull --rebase<cr>" },
				{ "<leader>p", ":Git push -u origin " },
			}
		end,
	}
}
