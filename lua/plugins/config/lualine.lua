local lualine = require('lualine')

local theme = require('lualine.themes.dracula')

lualine.setup {
	options = {
		theme = theme
	},
	sections = {
		lualine_x = {
			{
				require('noice').api.status.command.get,
				cond = require('noice').api.status.command.has,
				color = { fg = "#ff9e64" },
			},
			{
				require('noice').api.status.mode.get,
				cond = require('noice').api.status.mode.has,
				color = { fg = "#ff9e64" },
			},
		},
	}, }
