local map = vim.keymap.set

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope find in current buffer" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help tags" })

-- Neotree
map("n", "<leader>e", ":Neotree filesystem toggle left<CR>", { desc = "Toggle file browser" })

-- Quick focus windows
map("n", "<C-h>", ":wincmd h<CR>", { desc = "Focus left" })
map("n", "<C-j>", ":wincmd j<CR>", { desc = "Focus down" })
map("n", "<C-k>", ":wincmd k<CR>", { desc = "Focus up" })
map("n", "<C-l>", ":wincmd l<CR>", { desc = "Focus right" })
