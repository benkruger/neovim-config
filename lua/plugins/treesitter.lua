-- Sytntax Highlighting
-- https://github.com/nvim-treesitter/nvim-treesitter#quickstart
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = { "bash", "css", "javascript", "json", "json5", "lua", "markdown", "ruby", "sql", "vim" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
  end
}
