return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.register({
			g = {
				name = "Git",
				g = {
					"<cmd>LazyGit<CR>",
					"Open LaztGit App",
				},
				f = {
					"<cmd>LazyGitConfig<CR>",
					"Open LaztGit Configuration",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
