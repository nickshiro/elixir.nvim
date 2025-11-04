local M = {}

local colors = {
	white = "#DDDFE7",
	violet = "#8C6EF2",
	purple = "#EE91E5",
	yellow = "#F3D954",
	green = "#3CEC85",
	red = "#ED4F73",
	blue = "#82AAFF",
	light_gray = "#AAA0A9",
	gray = "#585270",
	dark_gray = "#282436",
}

local groups = {
	background = {
		primary = "#20192B",
		secondary = "#1E1828",
	},
	git = {
		add = colors.green,
		delete = colors.red,
		ignore = colors.gray,
		merge = colors.yellow,
		modified = colors.purple,
		untracked = colors.violet,
		rename = colors.violet,
		unstaged = colors.yellow,
	},
}

local highlights = {
	["Keyword"] = { fg = colors.violet },
	["Special"] = { fg = colors.violet },

	["Function"] = { fg = colors.blue },
	["@function.builtin"] = { fg = colors.blue },
	["@constructor"] = { fg = colors.blue },
	["@constructor.lua"] = { fg = colors.white },
	["@lsp.type.builtin"] = { fg = colors.blue },

	["Type"] = { fg = colors.purple },
	["@type.builtin"] = { fg = colors.purple },

	["Comment"] = { fg = colors.gray },
	["@comment.documentation"] = { fg = colors.light_gray },

	["String"] = { fg = colors.yellow },
	["@string.special"] = { fg = colors.yellow },
	["@character.special"] = { fg = colors.yellow },

	["Variable"] = { fg = colors.white },
	["@variable.builtin"] = { fg = colors.white },
	["Identifier"] = { fg = colors.white },
	["Constant"] = { fg = colors.white },

	["Punctuation"] = { fg = colors.white },
	["@punctuation.special"] = { fg = colors.white },

    ["@tag"] = { fg = colors.violet },
    ["@tag.attribute"] = { fg = colors.white },

	["Normal"] = { bg = groups.background.primary, fg = colors.white },
	["NormalFloat"] = { bg = groups.background.secondary },
	["Visual"] = { bg = "#372b4a" },
	["Search"] = { bg = colors.violet, fg = colors.white },

	["CursorLine"] = { bg = "#372b4a" },
	["CursorColumn"] = { bg = "#372b4a" },
	["LineNr"] = { fg = colors.gray },
	["CursorLineNr"] = { fg = colors.purple },

	["Directory"] = { fg = colors.violet },

	["Pmenu"] = { bg = groups.background.secondary },
	["PmenuSel"] = { bg = "#372b4a", fg = colors.purple },
	["PmenuMatch"] = { bg = "#2E3B54" },
	["PmenuThumb"] = { bg = "#2D3546" },

	["Error"] = { fg = colors.red },
	["Ok"] = { fg = colors.green },
	["WarningMsg"] = { fg = colors.yellow },
	["ErrorMsg"] = { fg = colors.red },
	["MoreMsg"] = { bg = colors.gray },
	["ModeMsg"] = { fg = colors.violet },
	["PreInsert"] = { fg = colors.green },
	["Question"] = { fg = colors.blue },
	["QuickFixLine"] = { fg = colors.blue },

	["WinSeparator"] = { fg = "#140E1F" },
	["StatusLine"] = { bg = "#1D1727", fg = colors.light_gray },
	["StatusLineNc"] = { bg = "#1D1727", fg = colors.light_gray },

	["SpellBad"] = { sp = colors.red, undercurl = true },
	["SpellCap"] = { sp = colors.yellow, undercurl = true },
	["SpellLocal"] = { sp = colors.green, undercurl = true },
	["SpellRare"] = { sp = colors.blue, undercurl = true },

	["DiagnosticError"] = { fg = colors.red },
	["DiagnosticUnderlineError"] = { sp = colors.red, undercurl = true },
	["DiagnosticWarn"] = { fg = colors.yellow },
	["DiagnosticUnderlineWarn"] = { sp = colors.yellow, undercurl = true },
	["DiagnosticInfo"] = { fg = colors.blue },
	["DiagnosticUnderlineInfo"] = { sp = colors.blue, undercurl = true },
	["DiagnosticHint"] = { fg = colors.blue },
	["DiagnosticUnderlineHint"] = { sp = colors.blue, undercurl = true },
	["DiagnosticOk"] = { fg = colors.green },
	["DiagnosticUnderlineOk"] = { sp = colors.green, undercurl = true },
	["DiagnosticDefaultError"] = { link = "DiagnosticError" },
	["DiagnosticDefaultWarn"] = { link = "DiagnosticWarn" },
	["DiagnosticDefaultInfo"] = { link = "DiagnosticInfo" },
	["DiagnosticDefaultHint"] = { link = "DiagnosticHint" },
	["DiagnosticDefaultOk"] = { link = "DiagnosticOk" },
	["DiagnosticFloatingError"] = { link = "DiagnosticError" },
	["DiagnosticFloatingWarn"] = { link = "DiagnosticWarn" },
	["DiagnosticFloatingInfo"] = { link = "DiagnosticInfo" },
	["DiagnosticFloatingHint"] = { link = "DiagnosticHint" },
	["DiagnosticFloatingOk"] = { link = "DiagnosticOk" },
	["DiagnosticSignError"] = { link = "DiagnosticError" },
	["DiagnosticSignWarn"] = { link = "DiagnosticWarn" },
	["DiagnosticSignInfo"] = { link = "DiagnosticInfo" },
	["DiagnosticSignHint"] = { link = "DiagnosticHint" },
	["DiagnosticSignOk"] = { link = "DiagnosticOk" },

	-- hrsh7th/nvim-cmp
	["CmpItemMenu"] = { fg = colors.white },
	["CmpItemKind"] = { fg = colors.white },

	-- lukas-reineke/indent-blankline.nvim
	["IblIndent"] = { fg = colors.dark_gray },
	["IblScope"] = { fg = colors.gray },

	-- nvim-neo-tree/neo-tree.nvim
	["NeoTreeFileIcon"] = { fg = colors.gray },
	["NeoTreeFileName"] = { fg = colors.white },
	["NeoTreeDirectoryIcon"] = { fg = colors.light_gray },
	["NeoTreeDirectoryName"] = { fg = colors.white },
	["NeoTreeGitAdded"] = { fg = groups.git.add },
	["NeoTreeGitConflict"] = { fg = groups.git.merge },
	["NeoTreeGitDeleted"] = { fg = groups.git.delete },
	["NeoTreeGitIgnored"] = { fg = groups.git.ignore },
	["NeoTreeGitModified"] = { fg = groups.git.modified },
	["NeoTreeGitRenamed"] = { fg = groups.git.rename },
	["NeoTreeGitUntracked"] = { fg = groups.git.untracked },
	["NeoTreeGitUnstaged"] = { fg = groups.git.unstaged },
	["NeoTreeTabSeparatorActive"] = { link = "WinSeparator" },
	["NeoTreeTabSeparatorInactive"] = { link = "WinSeparator" },
	["NeoTreeTitleBar"] = { link = "StatusLineTerm" },
	["NeoTreeNormal"] = { bg = groups.background.secondary },
	["NeoTreeNormalNC"] = { bg = groups.background.secondary },
}

function M.colorscheme()
	vim.g.colors_name = "elixir"
	vim.cmd.highlight("clear")
	if vim.fn.has("syntax_on") then
		vim.cmd.syntax("reset")
	end

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
