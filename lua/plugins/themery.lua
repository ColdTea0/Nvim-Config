local M = {
  "Zeioth/themery.nvim",
  lazy = false,    -- load on startup to apply theme immediately
  priority = 1000, -- load before other UI plugins
}

function M.config()
  require("themery").setup({
    themes = {
      "catppuccin",
      "darkplus",
    },
    themeConfigFile = "~/.config/nvim/lua/plugins/themery.lua", -- file to store selected theme
    livePreview = true,                                       -- instantly preview themes
  })

  -- Optional: keybinding to open themery picker
  vim.keymap.set("n", "<leader>ut", "<cmd>Themery<CR>", { desc = "Theme picker" })

  -- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme catppuccin")
vim.g.theme_id = 1
-- end themery block
end

return M
