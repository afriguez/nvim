local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local repository = 'https://github.com/wbthomason/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system({ 'git', 'clone', '--depth', '1', repository, install_path })
end

local ok, _ = pcall(require, "packer")
if not ok then return end

require('plugins.config.hop')
require('plugins.config.lualine')
require('plugins.config.presence')
require('plugins.config.mason')
require('plugins.config.cmp')
require('plugins.config.gitsigns')
require('plugins.config.indent_blankline')
require('plugins.config.noice')
require('plugins.config.treesitter')
require('plugins.config.catppuccin')
require('plugins.config.auto_session')
require('plugins.config.deadcolumn')
require('plugins.config.avante')
require('plugins.config.oil')
require('plugins.config.harpoon')
require('plugins.config.mini_icons')
require('plugins.config.elixir_tools')
require('plugins.config.global_note')

return require('packer').startup(function(use)
	use 'tpope/vim-fugitive'
	use 'tpope/vim-capslock'
	use 'lewis6991/gitsigns.nvim'

	use 'jiangmiao/auto-pairs'
	use 'mattn/emmet-vim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use 'phaazon/hop.nvim'
	use 'gelguy/wilder.nvim'

	use 'rmagatti/auto-session'
	use 'jakewvincent/mkdnflow.nvim'

	--use 'elixir-editors/vim-elixir'
	use 'elixir-tools/elixir-tools.nvim'

	use 'gleam-lang/gleam.vim'
	use 'ionide/ionide-vim'
	use 'tpope/vim-commentary'

	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-path'

	use 'afriguez/dracula.nvim'
	use { 'catppuccin/nvim', as = "catppuccin" }

	use 'echasnovski/mini.icons'

	use {
		'nvim-lualine/lualine.nvim',
		dependencies = { 'echasnovski/mini.icons' },
		config = function()
			require("mini.icons").setup()
			require("mini.icons").mock_nvim_web_devicons()
		end
	}
	use 'rcarriga/nvim-notify'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'folke/noice.nvim'
	use 'MunifTanjim/nui.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/nvim-treesitter-context'
	use 'bekaboo/deadcolumn.nvim'
	use {
		'rrethy/vim-hexokinase',
		run = 'cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase'
	}

	use 'andweeb/presence.nvim'

	use 'stevearc/dressing.nvim'
	use 'MeanderingProgrammer/render-markdown.nvim'

	use {
		'yetone/avante.nvim',
		branch = 'main',
		run = 'make',
		config = function()
			require('avante_lib').load()
		end
	}

	use 'stevearc/oil.nvim'

	use 'backdround/global-note.nvim'
	
	if PACKER_BOOTSTRAP then require('packer').sync() end
end)
