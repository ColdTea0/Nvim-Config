local M = {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}

function M.config()
  require("noice").setup({
    lsp = {
      progress = {
        enabled = true,
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },

    presets = {
      bottom_search = true,        -- Replace `/` and `?` with bottom bar
      command_palette = true,      -- Position :cmd-line and popup menu together
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,       -- Add border to hover/signature help
    },

    notify = {
      enabled = true,
    },

    messages = {
      view = "mini",               -- Use compact messages
      view_error = "notify",       -- Use notify view for errors
      view_warn = "notify",        -- Use notify view for warnings
    },

    views = {
      mini = {
        win_options = {
          winblend = 0,
        },
      },
    },
  })

  -- Use noice with notify
  vim.notify = require("notify")
end

return M

