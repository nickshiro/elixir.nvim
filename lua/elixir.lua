local M = {}

local colors = {}

local groups = {
	background = {
		primary = "#20192B",
	},
}

local highlights = {
	["Normal"] = groups.background.primary,
}

function M.colorscheme()
	vim.g.colors_name = "arc"
	vim.cmd.highlight("clear")
	if vim.fn.has("syntax_on") then
		vim.cmd.syntax("reset")
	end

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
