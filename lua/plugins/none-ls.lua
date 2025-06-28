return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Misc
				null_ls.builtins.formatting.prettier,

				-- Lua
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.luasnip,

				-- Python
				null_ls.builtins.diagnostics.pylint.with({
					diagnostics_postprocess = function(diagnostic)
						diagnostic.code = diagnostic.message_id
					end,
				}),
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,

				-- Ruby
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.rubocop,

				-- JS/TS
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Lsp format buffer" })
	end,
}
