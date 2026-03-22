local keymap = vim.keymap

-- file explorer
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")

-- buffers
keymap.set("n", "<leader>bd", ":bd<CR>")