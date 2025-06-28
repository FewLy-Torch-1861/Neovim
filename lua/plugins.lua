return {
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

  -- Neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      {"3rd/image.nvim", opts = {}},
    },
    lazy = false,
    opts = {
      -- fill any relevant options here
    },
  }
}
