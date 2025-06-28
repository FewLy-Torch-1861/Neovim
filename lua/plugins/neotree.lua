return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-n>", "<CMD>Neotree filesystem toggle left<CR>", { desc = "Toggle file browser" })
  end,
}
