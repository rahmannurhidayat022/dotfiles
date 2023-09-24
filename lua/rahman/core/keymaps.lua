vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- keluar dari mode input
keymap.set("n", "<leader>w", ":w<CR>") -- save file
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>") -- tambah value
keymap.set("n", "<leader>-", "<C-x>") -- kurangi value

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertikal
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontal
keymap.set("n", "<leader>se", "<C-w>=") -- buat split windows sama lebar dan tinggi
keymap.set("n", "<leader>sc", ":close<CR>") -- tutup split window saat ini

keymap.set("n", "<leader>o", ":tabnew<CR>") -- buat new file pada tab baru
keymap.set("n", "<leader>c", ":tabclose<CR>") -- tutup tab
keymap.set("n", "<S-H>", ":tabn<CR>") -- pindah ke tab selanjutnya
keymap.set("n", "<S-L>", ":tabp<CR>") -- pindah ke tab sebelumnya

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- fullscreen window split

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

keymap.set("n", "<leader>m", "<cmd>Mason<CR>") -- open mason
keymap.set("n", "<leader>g", "<cmd>LazyGit<CR>") -- open lazygit
