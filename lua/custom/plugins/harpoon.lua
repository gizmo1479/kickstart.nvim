return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		vim.keymap.set('n', '<leader>ha', function() harpoon:list():append() end,
			{ desc = "[H]arpoon [A]dd File" })
		-- vim.keymap.set('n', '<header>hr', require("harpoon.mark").rm_file, { desc = "[H]arpoon [R]emove File" })
		vim.keymap.set('n', '<leader>hv', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
			{ desc = "[H]arpoon [V]iew" })
	end
}
