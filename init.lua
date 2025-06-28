-- Indentation
vim.cmd.set "expandtab"
vim.cmd.set "tabstop=2"
vim.cmd.set "softtabstop=2"
vim.cmd.set "shiftwidth=2"

-- Line
vim.cmd.set "number"
vim.cmd.set "relativenumber"
vim.cmd.set "cursorline"

-- Clipboard
vim.cmd.set "clipboard+=unnamedplus"

-- Leaderkey
vim.g.mapleader= " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Catppuccin colorscheme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate"
  },
}
local opts = {}

-- Setup lazy.nvim
require("lazy").setup({ plugins, opts })

-- Colorscheme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-mocha"

-- Telescope
require("telescope").setup()
local telebuiltin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telebuiltin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telebuiltin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fz", telebuiltin.current_buffer_fuzzy_find, { desc = "Telescope find in current buffer" })
vim.keymap.set("n", "<leader>fb", telebuiltin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telebuiltin.help_tags, { desc = "Telescope help tags" })

-- Treesitter
require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true }
})
