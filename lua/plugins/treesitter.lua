local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  local configs = require("nvim-treesitter.configs")

  configs.setup({
    -- Add or remove languages as needed
    ensure_installed = {
      "lua",
      "bash",
      "python",
      "markdown",
      "markdown_inline",
      "json",
      "yaml",
      "html",
      "css",
      "javascript",
      "typescript",
    },

    sync_install = false,  -- Set to true if you want blocking install
    auto_install = true,   -- Automatically install missing parsers when entering buffer

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    indent = {
      enable = true,
      disable = { "yaml" }, -- You can list problematic languages here
    },

    -- Optional: Add more modules like rainbow, context, etc.
    rainbow = {
      enable = true,
      extended_mode = true,
    },
  })
end

return M

