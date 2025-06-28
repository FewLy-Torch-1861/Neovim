return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope find buffers" })
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help page" })
      vim.keymap.set("n", "<leader>fa", builtin.marks, { desc = "Telescope find marks" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Telescope find oldfiles" })
      vim.keymap.set(
        "n",
        "<leader>fz",
        builtin.current_buffer_fuzzy_find,
        { desc = "Telescope find in current buffer" }
      )
      vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Telescope git commits" })
      vim.keymap.set("n", "<leader>fg", builtin.git_status, { desc = "Telescope git status" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
