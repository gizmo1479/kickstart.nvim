return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			background = {
				light = "latte",
				dark = "macchiato",
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
			},
		})
		vim.cmd.colorscheme 'catppuccin'
	end,
}
