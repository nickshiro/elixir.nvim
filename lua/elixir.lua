local M = {}

local colors = {
	white = "#EAEAEA",
	violet = "#987EE8",
	purple = "#E889DF",
	yellow = "#F6CE4E",
	green = "#3AE480",
	red = "#EE6D85",
	blue = "#7199EE",
	light_gray = "#947691",
	gray = "#6E576B",
	dark_gray = "#493947",
}

local groups = {
	background = {
		primary = "#161722",
		secondary = "#11121D",
		tertiary = "#0C0D18",
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
	["@lsp"] = { fg = colors.white },

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

	["String"] = { fg = colors.yellow },
	["@character.special"] = { fg = colors.yellow },
	["@string.special"] = { fg = colors.white },

	["Variable"] = { fg = colors.white },
	["@variable"] = { fg = colors.white },
	["Identifier"] = { fg = colors.white },
	["Constant"] = { fg = colors.white },
	["@constant.builtin"] = { fg = colors.white },

	["Punctuation"] = { fg = colors.white },
    ["Delimiter"] = { fg = colors.white },
	["@punctuation.special"] = { fg = colors.white },

	["@tag"] = { fg = colors.violet },
	["@tag.attribute"] = { fg = colors.white },

	["Normal"] = { bg = groups.background.primary, fg = colors.white },
	["NormalFloat"] = { bg = groups.background.secondary },
	["Visual"] = { bg = "#2F2338" },
	["Search"] = { bg = colors.violet, fg = colors.white },

	["CursorLine"] = { bg = "#2F2338" },
	["CursorColumn"] = { bg = "#2F2338" },
	["LineNr"] = { fg = colors.gray },
	["CursorLineNr"] = { fg = colors.purple },

	["Directory"] = { fg = colors.violet },

	["Pmenu"] = { bg = groups.background.secondary, fg = colors.light_gray },
	["PmenuSel"] = { bg = "#2F2338", fg = colors.purple },
	["PmenuMatch"] = { fg = colors.purple },
	["PmenuThumb"] = { bg = "#2F2338" },

	["Error"] = { fg = colors.red },
	["Ok"] = { fg = colors.green },
	["WarningMsg"] = { fg = colors.yellow },
	["ErrorMsg"] = { fg = colors.red },
	["MoreMsg"] = { bg = colors.gray },
	["ModeMsg"] = { fg = colors.violet },
	["PreInsert"] = { fg = colors.green },
	["Question"] = { fg = colors.blue },
	["QuickFixLine"] = { fg = colors.blue },

	["WinSeparator"] = { fg = groups.background.secondary },

	["StatusLine"] = { bg = groups.background.tertiary, fg = colors.light_gray },
	["StatusLineNc"] = { bg = groups.background.tertiary, fg = colors.light_gray },

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
	["CmpItemAbbr"] = { fg = colors.light_gray },
	["CmpItemAbbrMatch"] = { fg = colors.purple },

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
