local M = {
	"zaldih/themery.nvim",
}

function M.config()
	-- Set custom name to the list
	require("themery").setup({
		themes = {
			{
				name = "toykonight",
				colorscheme = "tokyonight",
			},
			{
				name = "rose-pine",
				colorscheme = "rose-pine",
			},
			{
				name = "catppuccin",
				colorscheme = "catppuccin",
			},
			{ name = "onedark", colorscheme = "onedark" },
			{ name = "darkplus", colorscheme = "darkplus" },
		},
		themeConfigFile = "~/.config/nvim/lua/plugins/themery.lua", -- file to store selected theme
		livePreview = true,
	})

	-- Themery block
	-- This block will be replaced by Themery.
	vim.cmd("colorscheme catppuccin")
	vim.g.theme_id = 1
	-- end themery block
end

return M
