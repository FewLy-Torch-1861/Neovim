local map = vim.keymap.set

map("n", "<leader>h", "<cmd>noh<CR>", { desc = "Clear highlights" })
map("n", ";", ":", {})

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Quick focus windows
map("n", "<C-h>", "<CMD>wincmd h<CR>", { desc = "Focus left" })
map("n", "<C-j>", "<CMD>wincmd j<CR>", { desc = "Focus down" })
map("n", "<C-k>", "<CMD>wincmd k<CR>", { desc = "Focus up" })
map("n", "<C-l>", "<CMD>wincmd l<CR>", { desc = "Focus right" })

-- Ctrl + S to save
map("n", "<C-s>", "<CMD>w<CR>", { desc = "Save buffer" })

-- Buffer
map("n", "<Tab>", "<CMD>BufferNext<CR>", { desc = "Buffer Next" })
map("n", "<S-Tab>", "<CMD>BufferPrevious<CR>", { desc = "Buffer Previous" })
map("n", "<leader>x", "<CMD>BufferClose<CR>", { desc = "Buffer Close" })
map("n", "<leader>n", "<CMD>enew<CR>", { desc = "Buffer New" })

