return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		size = 13,
		open_mapping = [[<c-\>]],
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = "1",
		start_in_insert = true,
		shell = vim.o.shell,
		persist_size = true,
		direction = "horizontal",
	},
	-- config = function()
	-- 	local Terminal = require("toggleterm.terminal").Terminal
	-- 	local double_win = Terminal:new({
	-- 		size = 20,
	-- 		hide_numbers = true,
	-- 		shade_filetypes = {},
	-- 		shade_terminals = true,
	-- 		shading_factor = 2,
	-- 		start_in_insert = true,
	-- 		insert_mappings = true,
	-- 		direction = "horizontal",
	-- 		close_on_exit = false,
	--      autochdir = true,
	-- 		shell = vim.o.shell,
	-- 		on_open = function(term)
	-- 			vim.cmd("startinsert!")
	-- 			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	-- 		end,
	-- 		on_close = function(term)
	-- 			vim.cmd("startinsert!")
	-- 		end,
	-- 	})
	--
	-- 	function _double_win_toggle()
	-- 		double_win:toggle()
	-- 	end
	--
	-- 	vim.api.nvim_set_keymap(
	-- 		"n",
	-- 		"<leader>t",
	-- 		"<cmd>lua _double_win_toggle()<CR>",
	-- 		{ noremap = true, silent = true }
	-- 	)
	-- end,
}
