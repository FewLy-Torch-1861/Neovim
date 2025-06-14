require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"lua_ls",
	"ts_ls",
	"pyright",
	"jsonls",
	"bashls",
	"qmlls",
}
vim.lsp.enable(servers)
