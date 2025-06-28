return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = true,
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "harper_ls",
          "eslint",
          "cssls",
          "html",
          "jsonls",
          "pyright",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.harper_ls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.pyright.setup({})

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 4,
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      local function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
      end

      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))

      vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts("Add workspace folder"))
      vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts("Remove workspace folder"))
      vim.keymap.set("n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts("List workspace folders"))

      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts("Go to type definition"))
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Buffer Hover"))
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code actions"))
    end,
  },
}
