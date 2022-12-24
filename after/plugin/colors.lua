vim.g.ismail_colorscheme = "tokyonight"
function Color()
	require("gruvbox").setup({
		bold = true,
		contrast = "hard", -- can be "hard", "soft" or empty string
		transparent_mode = true,
	})
	require("tokyonight").setup({
		style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		transparent = true, -- Enable this to disable setting the background color
	})
	vim.opt.background = "dark" -- or "light" for light mode
	vim.cmd.colorscheme(vim.g.ismail_colorscheme)
	--[[ vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) ]]
	--[[ vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) ]]
	local hl = function(thing, opts)
		vim.api.nvim_set_hl(0, thing, opts)
	end
	hl("SignColumn", {
		bg = "none",
	})
	hl("ColorColumn", {
		ctermbg = 0,
		bg = "#555555",
	})
	hl("CursorLineNR", {
		bg = "None",
	})
end
Color()
