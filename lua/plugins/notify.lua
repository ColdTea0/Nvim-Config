local M = {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
}

function M.config()
  local notify = require("notify")

  notify.setup({
    stages = "fade",
    timeout = 3000,
    render = "default",
    background_colour = "Normal",
  })

  vim.notify = notify

  -- Optional: override LSP message handler
  vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
    local client = vim.lsp.get_client_by_id(ctx.client_id)
    local level = ({
      "ERROR",
      "WARN",
      "INFO",
      "DEBUG",
    })[result.type] or "INFO"

    notify(result.message, level, {
      title = "LSP | " .. (client and client.name or "Unknown"),
      timeout = 5000,
    })
  end

  -- 🔔 Notify on every save
  vim.api.nvim_create_autocmd("BufWritePost", {
    callback = function()
      notify("File saved!", "info", { title = "Autosave" })
    end,
  })
end

return M

