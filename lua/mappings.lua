local map = vim.keymap.set

-- Quick focus windows
map("n", "<C-h>", ":wincmd h<CR>", { desc = "Focus left" })
map("n", "<C-j>", ":wincmd j<CR>", { desc = "Focus down" })
map("n", "<C-k>", ":wincmd k<CR>", { desc = "Focus up" })
map("n", "<C-l>", ":wincmd l<CR>", { desc = "Focus right" })

-- Ctrl + S to save
map("n", "<C-s>" ":w<CR>", { desc = "Save buffer" })
