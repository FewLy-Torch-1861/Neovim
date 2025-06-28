local map = vim.keymap.set

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

-- Quick focus windows
map("n", "<C-h>", "<CMD>wincmd h<CR>", { desc = "Focus left" })
map("n", "<C-j>", "<CMD>wincmd j<CR>", { desc = "Focus down" })
map("n", "<C-k>", "<CMD>wincmd k<CR>", { desc = "Focus up" })
map("n", "<C-l>", "<CMD>wincmd l<CR>", { desc = "Focus right" })

-- Ctrl + S to save
map("n", "<C-s>", "<CMD>w<CR>", { desc = "Save buffer" })
