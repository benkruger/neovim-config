-- https://github.com/nvimtools/none-ls.nvim
-- Make linters and formatters act like LSP's
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        -- Lua
				null_ls.builtins.formatting.stylua,
        -- Ruby
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
        -- SQL
				null_ls.builtins.formatting.sql_formatter,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
