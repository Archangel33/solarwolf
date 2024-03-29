local cb = require("colorbuddy")

cb.colorscheme("solarwolf")

local defaults = {
	comment_italics = true,
	background_set = false,
	background_color = require("colorbuddy.init").Color.NONE,
}

local M = {}

function M.setup(opts)
	if not opts then
		opts = {}
	end

	for k, v in pairs(defaults) do
		if opts[k] == nil then
			opts[k] = v
		end
	end

	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	--
	-- if vim.fn.exists("syntax_on") then
	-- 	vim.cmd("syntax reset")
	-- end

	vim.g.colors_name = "solarwolf"

	local Color = cb.Color
	local Group = cb.Group
	local c = cb.colors
	local g = cb.groups
	local s = cb.styles

	-- Solarized colors
	Color.new("base03", "#002b36")
	Color.new("base02", "#073642")
	Color.new("base01", "#586e75")
	Color.new("base00", "#657b83")
	Color.new("base0", "#839496")
	Color.new("base1", "#93a1a1")
	Color.new("base2", "#eee8d5")
	Color.new("base3", "#fdf6e3")
	Color.new("yellow", "#b58900")
	Color.new("orange", "#cb4b16")
	Color.new("red", "#dc322f")
	Color.new("magenta", "#d33682")
	Color.new("violet", "#6c71c4")
	Color.new("blue", "#268bd2")
	Color.new("cyan", "#2aa198")
	Color.new("green", "#719e07")

	Group.new("Error", c.red)
	Group.new("Warning", c.yellow)
	Group.new("Information", c.blue)
	Group.new("Hint", c.cyan)

	-- if opts["background_set"] and opts["background_color"] == Color.none then
	-- 	opts["background_color"] = c.base03
	-- end
	--
	-- local bg_color = opts["background_color"]
	--
	local bg_color = c.base03

	Group.new("Normal", c.base0, bg_color)
	--	Group.new("NormalFloat", c.base0, not opts["background_set"] and Color.none or c.base02)
	-- normal non-current text
	--	Group.new("NormalNC", c.base0:dark(), bg_color)

	-- Group.new("Comment", c.base01, c.none, opts.comment_italics and s.italic or s.NONE)
	-- Group.new("Constant", c.cyan)
	-- Group.new("Identifier", c.blue)
	--
	-- -- any statement, conditional, repeat (for, do while), label, operator
	-- Group.new("Statement", c.base0)
	-- Group.new("PreProc", c.red)
	-- Group.new("Type", c.yellow)
	-- Group.new("Special", c.orange)
	-- Group.new("SpecialKey", c.base00)
	-- Group.new("Underlined", c.violet)
	-- Group.new("Strikethrough", c.base01, c.none, s.strikethrough)
	-- Group.new("Ignore", c.none)
	-- Group.new("Error", c.red)
	-- Group.new("Todo", c.magenta, c.none, s.bold)
	-- Group.new("Function", c.blue)
	-- Group.link("Include", g.PreProc)
	-- Group.link("Macro", g.PreProc)
	-- Group.link("Keyword", g.Statement)
	-- Group.link("Delimiter", g.Special)
	-- Group.link("Repeat", g.Statement)
	-- Group.link("Conditional", g.Statement)
	-- Group.link("Define", g.PreProc)
	-- Group.link("Operator", g.Statement)
	-- Group.link("Character", g.Constant)
	-- Group.link("Float", g.Constant)
	-- Group.link("Boolean", g.Constant)
	-- Group.link("Number", g.Constant)
	-- Group.link("Debug", g.Special)
	-- Group.link("Label", g.Statement)
	-- Group.link("Exception", g.Statement)
	-- Group.link("Typedef", g.Type)
	-- Group.link("StorageClass", g.Type)
	--
	-- Group.link("SpecialChar", g.Special)
	-- Group.new("SpecialKey", c.base00, c.base02, s.bold)
	-- Group.new("Text", c.cyan)
	-- Group.link("String", g.Text)
	-- Group.new("NonText", c.base00, c.none, s.bold)
	-- Group.new("StatusLine", c.base1, c.base02, s.reverse)
	-- Group.new("StatusLineNC", c.base00, c.base02, s.reverse)
	-- Group.new("Visual", c.base01, c.base03, s.reverse)
	-- Group.new("Directory", c.blue)
	-- Group.new("ErrorMsg", c.red, c.none, s.reverse)
	--
	-- Group.new("IncSearch", c.orange, c.none, s.standout)
	-- Group.new("Search", c.yellow, c.none, s.reverse)
	--
	-- Group.new("MoreMsg", c.blue, c.none, s.NONE)
	-- Group.new("ModeMsg", c.blue, c.none, s.NONE)
	-- Group.new("Question", c.cyan, c.none, s.bold)
	-- Group.new("VertSplit", c.base00, c.none, s.NONE)
	-- Group.new("Title", c.orange, c.none, s.bold)
	-- Group.new("VisualNOS", c.none, c.base02, s.reverse)
	-- Group.new("WarningMsg", c.orange, c.none, s.bold)
	-- Group.new("WildMenu", c.base2, c.base02, s.reverse)
	-- Group.new("Folded", c.base0, c.base02, s.bold, c.base03)
	-- Group.new("FoldColumn", c.base0, c.none, s.NONE)
	--
	-- Group.new("DiffAdd", c.green, c.base02, s.bold, c.green)
	-- Group.new("DiffChange", c.yellow, c.base02, s.bold, c.yellow)
	-- Group.new("DiffDelete", c.red, c.base02, s.bold)
	-- Group.new("DiffText", c.blue, c.base02, s.bold, c.blue)
	--
	-- Group.new("SignColumn", c.base0, c.green, s.NONE)
	-- Group.new("Conceal", c.blue, c.none, s.NONE)
	--
	-- Group.new("SpellBad", c.none, c.none, s.undercurl, c.red)
	-- Group.new("SpellCap", c.none, c.none, s.undercurl, c.violet)
	-- Group.new("SpellRare", c.none, c.none, s.undercurl, c.cyan)
	-- Group.new("SpellLocal", c.none, c.none, s.undercurl, c.yellow)
	-- -- These are nice alternatives if you like a little more color
	-- --Group.new("SpellBad", c.violet, c.bg, s.undercurl)
	-- --Group.new("SpellCap", c.violet, c.bg, s.undercurl)
	-- --Group.new("SpellLocal", c.yellow, c.bg, s.undercurl)
	-- --Group.new("SpellRare", c.cyan, c.bg, s.undercurl)
	--
	-- -- pum (popup menu)
	-- Group.new("Pmenu", g.Normal, c.base02, s.none) -- popup menu normal item
	-- Group.new("PmenuSel", c.base01, c.base2, s.reverse) -- selected item
	-- Group.new("PmenuSbar", c.base02, c.none, s.reverse)
	-- Group.new("PmenuThumb", c.base0, c.none, s.reverse)
	--
	-- -- be nice for this float border to be cyan if active
	-- Group.new("FloatBorder", c.base02)
	--
	-- Group.new("TabLine", c.base0, c.base02, s.NONE, c.base0)
	-- Group.new("TabLineFill", c.base0, c.base02)
	-- Group.new("TabLineSel", c.yellow, bg_color)
	-- Group.new("TabLineSeparatorSel", c.cyan, c.none)
	--
	-- Group.new("LineNr", c.base01, bg_color, s.NONE)
	-- Group.new("CursorLine", c.none, c.base02, s.NONE, c.base1)
	-- Group.new("CursorLineNr", c.none, c.none, s.NONE, c.base1)
	-- Group.new("ColorColumn", c.none, c.base02, s.NONE)
	Group.new("Cursor", c.base03, c.base0, s.NONE)
	Group.link("lCursor", g.Cursor)
	Group.link("TermCursor", g.Cursor)
	Group.new("TermCursorNC", c.base03, c.base01)
	--
	-- Group.new("MatchParen", c.red, c.base01, s.bold)
	--
	-- Group.new("GitGutterAdd", c.green)
	-- Group.new("GitGutterChange", c.yellow)
	-- Group.new("GitGutterDelete", c.red)
	-- Group.new("GitGutterChangeDelete", c.red)
	--
	-- Group.new("GitSignsAddLn", c.green)
	-- Group.new("GitSignsAddNr", c.green)
	-- Group.new("GitSignsChangeLn", c.yellow)
	-- Group.new("GitSignsChangeNr", c.yellow)
	-- Group.new("GitSignsDeleteLn", c.red)
	-- Group.new("GitSignsDeleteNr", c.red)
	-- Group.link("GitSignsCurrentLineBlame", g.Comment)
	--
	-- -- vim highlighting
	-- Group.link("vimVar", g.Identifier)
	-- Group.link("vimFunc", g.Identifier)
	-- Group.link("vimUserFunc", g.Identifier)
	-- Group.link("helpSpecial", g.Special)
	-- Group.link("vimSet", g.Normal)
	-- Group.link("vimSetEqual", g.Normal)
	-- Group.new("vimCommentString", c.violet)
	-- Group.new("vimCommand", c.yellow)
	-- Group.new("vimCmdSep", c.blue, c.NONE, s.bold)
	-- Group.new("helpExample", c.base1)
	-- Group.new("helpOption", c.cyan)
	-- Group.new("helpNote", c.magenta)
	-- Group.new("helpVim", c.magenta)
	-- Group.new("helpHyperTextJump", c.blue, c.NONE, s.underline)
	-- Group.new("helpHyperTextEntry", c.green)
	-- Group.new("vimIsCommand", c.base00)
	-- Group.new("vimSynMtchOpt", c.yellow)
	-- Group.new("vimSynType", c.cyan)
	-- Group.new("vimHiLink", c.blue)
	-- Group.new("vimGroup", c.blue, c.NONE, s.underline + s.bold)
	--
	-- Group.new("gitcommitSummary", c.green)
	-- Group.new("gitcommitComment", c.base01, c.NONE, s.italic)
	-- Group.link("gitcommitUntracked", g.gitcommitComment)
	-- Group.link("gitcommitDiscarded", g.gitcommitComment)
	-- Group.new("gitcommitSelected", g.gitcommitComment)
	-- Group.new("gitcommitUnmerged", c.green, c.NONE, s.bold)
	-- Group.new("gitcommitOnBranch", c.base01, c.NONE, s.bold)
	-- Group.new("gitcommitBranch", c.magenta, c.NONE, s.bold)
	-- Group.link("gitcommitNoBranch", g.gitcommitBranch)
	-- Group.new("gitcommitDiscardedType", c.red)
	-- Group.new("gitcommitSelectedType", c.green)
	-- Group.new("gitcommitHeader", c.base01)
	-- Group.new("gitcommitUntrackedFile", c.cyan)
	-- Group.new("gitcommitDiscardedFile", c.red)
	-- Group.new("gitcommitSelectedFile", c.green)
	-- Group.new("gitcommitUnmergedFile", c.yellow)
	-- Group.new("gitcommitFile", c.base0)
	-- Group.link("gitcommitDiscardedArrow", g.gitCommitDiscardedFile)
	-- Group.link("gitcommitSelectedArrow", g.gitCommitSelectedFile)
	-- Group.link("gitcommitUnmergedArrow", g.gitCommitUnmergedFile)
	--
	-- Group.link("diffAdded", g.Statement)
	-- Group.link("diffLine", g.Identifier)
	--
	-- Group.new("NeomakeErrorSign", c.orange)
	-- Group.new("NeomakeWarningSign", c.yellow)
	-- Group.new("NeomakeMessageSign", c.cyan)
	-- Group.new("NeomakeNeomakeInfoSign", c.green)
	--
	-- Group.new("CmpItemKind", c.green)
	-- Group.new("CmpItemMenu", g.NormalNC)
	-- -- Group.new('CmpItemAbbr', c.base0, c.none, s.none)
	-- -- Group.new('CmpItemAbbrMatch', c.base0, c.none, s.none)
	-- Group.new("CmpItemKindText", c.base3, c.none, s.none)
	-- Group.new("CmpItemKindMethod", c.green, c.none, s.none)
	-- Group.new("CmpItemKindFunction", c.blue, c.none, s.none)
	-- Group.new("CmpItemKindConstructor", c.orange, c.none, s.none)
	-- Group.new("CmpItemKindField", c.yellow, c.none, s.none)
	-- Group.new("CmpItemKindVariable", c.orange, c.none, s.none)
	-- Group.new("CmpitemKindClass", c.yellow, c.none, s.none)
	-- Group.new("CmpItemKindInterface", c.yellow, c.none, s.none)
	-- Group.new("CmpItemKindModule", c.green, c.none, s.none)
	-- Group.new("CmpItemKindProperty", c.green, c.none, s.none)
	-- Group.new("CmpItemKindUnit", c.orange, c.none, s.none)
	-- Group.new("CmpItemKindValue", c.cyan, c.none, s.none)
	-- Group.new("CmpItemKindEnum", c.yellow, c.none, s.none)
	-- Group.new("CmpItemKindKeyword", c.green, c.none, s.none)
	-- Group.new("CmpItemKindSnippet", c.magenta, c.none, s.none)
	-- Group.new("CmpItemKindColor", c.magenta, c.none, s.none)
	-- Group.new("CmpItemKindFile", c.violet, c.none, s.none)
	-- Group.new("CmpItemKindReference", c.violet, c.none, s.none)
	-- Group.new("CmpItemKindFolder", c.violet, c.none, s.none)
	-- Group.new("CmpItemKindEnumMember", c.cyan, c.none, s.none)
	-- Group.new("CmpItemKindConstant", c.cyan, c.none, s.none)
	-- Group.new("CmpItemKindStruct", c.yellow, c.none, s.none)
	-- Group.new("CmpItemKindEvent", c.orange, c.none, s.none)
	-- Group.new("CmpItemKindOperator", c.cyan, c.none, s.none)
	-- Group.new("CmpItemKindTypeParameter", c.orange, c.none, s.none)
	--
	-- Group.new("LspSagaCodeActionTitle", c.green)
	-- Group.new("LspSagaBorderTitle", c.yellow, c.none, s.bold)
	-- Group.new("LspSagaDiagnosticHeader", c.yellow)
	-- Group.new("ProviderTruncateLine", c.base02)
	-- Group.new("LspSagaShTruncateLine", g.ProviderTruncateLine)
	-- Group.new("LspSagaDocTruncateLine", g.ProviderTruncateLine)
	-- Group.new("LspSagaCodeActionTruncateLine", g.ProviderTruncateLine)
	-- Group.new("LspSagaHoverBorder", c.cyan)
	-- Group.new("LspSagaRenameBorder", g.LspSagaHoverBorder)
	-- Group.new("LSPSagaDiagnosticBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaSignatureHelpBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaCodeActionBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaLspFinderBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaFloatWinBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaSignatureHelpBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaDefPreviewBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaAutoPreviewBorder", g.LspSagaHoverBorder)
	-- Group.new("LspFloatWinBorder", g.LspSagaHoverBorder)
	-- Group.new("LspLinesDiagBorder", g.LspSagaHoverBorder)
	-- Group.new("LspSagaFinderSelection", c.green, c.none, s.bold)
	-- --Group.new('SagaShadow', c.base02)
	--
	-- Group.new("TelescopeMatching", c.orange, g.Special, g.Special, g.Special)
	-- Group.new("TelescopeBorder", c.base01) -- float border not quite dark enough, maybe that needs to change?
	-- Group.new("TelescopePromptBorder", c.cyan) -- active border lighter for clarity
	-- Group.new("TelescopeTitle", g.Normal) -- separate them from the border a little, but not make them pop
	-- Group.new("TelescopePromptPrefix", g.Normal) -- default is g.Identifier
	-- Group.link("TelescopeSelection", g.CursorLine)
	-- Group.new("TelescopeSelectionCaret", c.cyan)
	--
	-- Group.new("NeogitDiffAddHighlight", c.blue, c.red)
	-- Group.new("NeogitDiffDeleteHighlight", c.blue, c.red)
	-- Group.new("NeogitHunkHeader", g.Normal, c.base02)
	-- Group.new("NeogitHunkHeaderHighlight", g.Normal, c.red)
	-- Group.new("NeogitDiffContextHighlight", c.base2, c.base02)
	-- Group.new("NeogitCommandText", g.Normal)
	-- Group.new("NeogitCommandTimeText", g.Normal)
	-- Group.new("NeogitCommandCodeNormal", g.Normal)
	-- Group.new("NeogitCommandCodeError", g.Error)
	-- Group.new("NeogitNotificationError", g.Error, c.none)
	-- Group.new("NeogitNotificationInfo", g.Information, c.none)
	-- Group.new("NeogitNotificationWarning", g.Warning, c.none)
	--
	-- -- seblj/nvim-tabline
	-- Group.new("TabLineSeparatorActive", c.cyan)
	-- Group.link("TabLineModifiedSeparatorActive", g.TablineSeparatorActive)
	--
	-- -- kevinhwang91/nvim-bqf
	-- Group.new("BqfPreviewBorder", c.base01)
	-- Group.new("BqfSign", c.cyan)
	--
	-- -- Primeagen/harpoon
	-- Group.new("HarpoonBorder", c.cyan)
	-- Group.new("HarpoonWindow", g.Normal)
	--
	-- -- nvim-tree/nvim-tree.lua
	-- Group.new("NvimTreeFolderIcon", c.blue)
	-- Group.new("NvimTreeRootFolder", c.orange)
	-- Group.new("NvimTreeImageFile", c.orange)
	-- Group.new("NvimTreeSpecialFile", c.orange, c.none, s.bold + s.underline)
	--
	-- -- phaazon/hop.nvim
	-- Group.link("HopNextKey", g.IncSearch)
	-- Group.link("HopNextKey1", g.IncSearch)
	-- Group.link("HopNextKey2", g.IncSearch)
	--
	-- -- https://github.com/j-hui/fidget.nvim (for some reason the background
	-- -- is only correct if used with background_set = true) even when set below)
	-- Group.new("FidgetTitle", c.magenta)
	-- Group.new("FidgetTask", c.base0)
	--
	-- -- TreeSitter
	-- Group.link("TSBoolean", g.Constant)
	-- Group.link("TSCharacter", g.Constant)
	-- Group.link("TSComment", g.Comment)
	-- Group.link("TSConditional", g.Conditional)
	-- Group.link("TSConstant", g.Constant)
	-- Group.link("TSConstBuiltin", g.Constant)
	-- Group.link("TSConstMacro", g.Constant)
	-- Group.link("TSError", g.Error)
	-- Group.link("TSException", g.Exception)
	-- Group.link("TSField", g.Identifier)
	-- Group.link("TSFloat", g.Constant)
	-- Group.link("TSFunction", g.Function)
	-- Group.link("TSFuncBuiltin", g.Function)
	-- Group.link("TSFuncMacro", g.Function)
	-- Group.link("TSInclude", g.Include)
	-- Group.link("TSKeyword", g.Keyword)
	-- Group.link("TSLabel", g.Statement)
	-- Group.link("TSMethod", g.Function)
	-- Group.link("TSNamespace", g.Identifier)
	-- Group.link("TSNumber", g.Constant)
	-- Group.link("TSOperator", g.Operator)
	-- Group.link("TSParameterReference", g.Identifier)
	-- Group.link("TSProperty", g.TSField)
	-- Group.link("TSPunctDelimiter", g.Delimiter)
	-- Group.link("TSPunctBracket", g.Delimiter)
	-- Group.link("TSPunctSpecial", g.Special)
	-- Group.link("TSRepeat", g.Repeat)
	-- Group.link("TSString", g.Constant)
	-- Group.link("TSStringRegex", g.Constant)
	-- Group.link("TSStringEscape", g.Constant)
	-- Group.new("TSStrong", c.base1, c.none, s.bold)
	-- Group.link("TSConstructor", g.Function)
	-- Group.link("TSKeywordFunction", g.Identifier)
	-- Group.new("TSLiteral", g.Normal)
	-- Group.link("TSParameter", g.Identifier)
	-- Group.link("TSVariable", g.Normal)
	-- Group.link("TSVariableBuiltin", g.Identifier)
	-- Group.link("TSTag", g.Special)
	-- Group.link("TSTagDelimiter", g.Delimiter)
	-- Group.link("TSTitle", g.Title)
	-- Group.link("TSType", g.Type)
	-- Group.link("TSTypeBuiltin", g.Type)
	--
	-- Group.link("DiagnosticError", g.Error)
	-- Group.new("DiagnosticWarn", c.yellow)
	-- Group.new("DiagnosticInfo", c.cyan)
	-- Group.new("DiagnosticHint", c.green)
	-- Group.new("DiagnosticUnderlineError", c.none, c.none, s.underline)
	-- Group.new("DiagnosticUnderlineWarn", c.none, c.none, s.underline)
	-- Group.new("DiagnosticUnderlineInfo", c.none, c.none, s.underline)
	-- Group.new("DiagnosticUnderlineHint", c.none, c.none, s.underline)
	-- Group.link("DiagnosticVirtualTextHint", g.Comment)
	-- Group.link("DiagnosticTextWarn", g.WarningMsg)
	--
	-- Group.new("LspReferenceRead", c.none, c.none, s.underline)
	-- Group.link("LspReferenceText", g.LspReferenceRead)
	-- Group.new("LspReferenceWrite", c.none, c.none, s.underline)
	--
	-- -- folke/which-key.nvim
	-- Group.new("WhichKeySeparator", c.base01, c.base02, s.bold)
	-- Group.new("WhichKeyDesc", c.cyan, c.base02)
	--
	-- -- SmiteshP/nvim-navic
	-- Group.new("NavicIconsFile", c.base0)
	-- Group.new("NavicIconsModule", c.blue)
	-- Group.new("NavicIconsNamespace", c.orange)
	-- Group.new("NavicIconsPackage", c.yellow)
	-- Group.new("NavicIconsClass", c.magenta)
	-- Group.new("NavicIconsMethod", c.red)
	-- Group.new("NavicIconsProperty", c.red)
	-- Group.new("NavicIconsField", c.red)
	-- Group.new("NavicIconsConstructor", c.magenta)
	-- Group.new("NavicIconsEnum", c.blue)
	-- Group.new("NavicIconsInterface", c.cyan)
	-- Group.new("NavicIconsFunction", c.magenta)
	-- Group.new("NavicIconsVariable", c.yellow)
	-- Group.new("NavicIconsConstant", c.magenta)
	-- Group.new("NavicIconsString", c.cyan)
	-- Group.new("NavicIconsNumber", c.cyan)
	-- Group.new("NavicIconsBoolean", c.blue)
	-- Group.new("NavicIconsArray", c.blue)
	-- Group.new("NavicIconsObject", c.red)
	-- Group.new("NavicIconsKey", c.yellow)
	-- Group.new("NavicIconsNull", c.red)
	-- Group.new("NavicIconsEnumMember", c.cyan)
	-- Group.new("NavicIconsStruct", c.magenta)
	-- Group.new("NavicIconsEvent", c.yellow)
	-- Group.new("NavicIconsOperator", c.green)
	-- Group.new("NavicIconsTypeParameter", c.blue)
	-- Group.new("NavicText", c.base0)
	-- Group.new("NavicSeparator", c.yellow)
	--
	-- -- group names with an at sign throw an error neovime < 0.8.0
	-- -- XML-like tags
	-- Group.new("@tag", c.green)
	-- Group.new("@tag.attribute", c.blue)
	-- Group.new("@tag.delimiter", c.red)
	--
	-- Group.new("@none", c.none)
	-- Group.link("@comment", g.Comment)
	-- Group.link("@error", g.Error)
	-- Group.link("@preproc", g.PreProc)
	-- Group.link("@define", g.Define)
	-- Group.link("@operator", g.Operator)
	--
	-- Group.link("@punctuation.delimiter", g.Statement)
	-- Group.link("@punctuation.bracket", g.Delimiter)
	-- Group.link("@punctuation.special", g.Delimiter)
	--
	-- Group.link("@string", g.String)
	-- Group.link("@string.regex", g.String)
	-- Group.link("@string.escape", g.Special)
	-- Group.link("@string.special", g.Special)
	--
	-- Group.link("@character", g.Character)
	-- Group.link("@character.special", g.Special)
	--
	-- Group.link("@boolean", g.Boolean)
	-- Group.link("@number", g.Number)
	-- Group.link("@float", g.Float)
	--
	-- Group.link("@function", g.Function)
	-- Group.link("@function.call", g.Function)
	-- Group.link("@function.builtin", g.Function)
	-- Group.link("@function.macro", g.Macro)
	--
	-- Group.link("@method", g.Function)
	-- Group.link("@method.call", g.Function)
	--
	-- Group.link("@constructor", g.Special)
	-- -- not sure about this one, special is true and kinda nice?
	-- Group.link("@parameter", g.Special)
	--
	-- Group.link("@keyword", g.Keyword)
	-- Group.link("@keyword.function", g.Keyword)
	-- Group.link("@keyword.operator", g.Keyword)
	-- Group.link("@keyword.return", g.Keyword)
	--
	-- Group.link("@conditional", g.Conditional)
	-- Group.link("@repeat", g.Repeat)
	-- Group.link("@debug", g.Debug)
	-- Group.link("@label", g.Label)
	-- Group.link("@include", g.Include)
	-- Group.link("@exception", g.Exception)
	--
	-- Group.link("@type", g.Type)
	-- Group.link("@type.builtin", g.Type)
	-- Group.link("@type.qualifier", g.Type)
	-- Group.link("@type.definition", g.Typedef)
	--
	-- Group.link("@storageclass", g.StorageClass)
	-- Group.link("@attribute", g.Identifier)
	-- Group.link("@field", g.Identifier)
	-- Group.link("@property", g.Identifier)
	--
	-- Group.new("@variable", c.base0)
	-- Group.link("@variable.builtin", g.Special)
	--
	-- Group.link("@constant", g.Constant)
	-- Group.link("@constant.builtin", g.Type)
	-- Group.link("@constant.macro", g.Define)
	--
	-- Group.link("@namespace", g.Identifier)
	-- Group.link("@symbol", g.Identifier)
	--
	-- Group.link("@text", g.Normal)
	-- Group.new("@text.strong", c.base1, c.none, s.bold)
	-- Group.new("@text.emphasis", c.base1, c.none, s.bold)
	-- Group.link("@text.underline", g.Underlined)
	-- Group.link("@text.strike", g.Strikethrough)
	-- Group.link("@text.title", g.Title)
	-- Group.link("@text.literal", g.String)
	-- Group.link("@text.uri", g.Underlined)
	-- Group.link("@text.math", g.Special)
	-- Group.link("@text.environment", g.Macro)
	-- Group.link("@text.environment.name", g.Type)
	-- Group.link("@text.reference", g.Constant)
	--
	-- Group.link("@text.todo", g.Todo)
	-- Group.link("@text.note", g.Comment)
	-- Group.link("@text.warning", g.WarningMsg)
	-- Group.new("@text.danger", c.red, c.none, s.bold)
	--
	-- function M.translate(group)
	-- 	if vim.fn.has("nvim-0.6.0") == 0 then
	-- 		return group
	-- 	end
	--
	-- 	if not string.match(group, "^LspDiagnostics") then
	-- 		return group
	-- 	end
	--
	-- 	local translated = group
	-- 	translated = string.gsub(translated, "^LspDiagnosticsDefault", "Diagnostic")
	-- 	translated = string.gsub(translated, "^LspDiagnostics", "Diagnostic")
	-- 	translated = string.gsub(translated, "Warning$", "Warn")
	-- 	translated = string.gsub(translated, "Information$", "Info")
	-- 	return translated
	-- end
	--
	-- local lspColors = {
	-- 	Error = g.Error,
	-- 	Warning = g.Warning,
	-- 	Information = g.Information,
	-- 	Hint = g.Hint,
	-- }
	-- for _, lsp in pairs({ "Error", "Warning", "Information", "Hint" }) do
	-- 	local lspGroup = Group.new(M.translate("LspDiagnosticsDefault" .. lsp), lspColors[lsp])
	-- 	Group.link(M.translate("LspDiagnosticsVirtualText" .. lsp), lspGroup)
	-- 	Group.new(M.translate("LspDiagnosticsUnderline" .. lsp), c.none, c.none, s.undercurl, lspColors[lsp])
	-- end
	--
	-- for _, name in pairs({ "LspReferenceText", "LspReferenceRead", "LspReferenceWrite" }) do
	-- 	Group.link(M.translate(name), g.CursorLine)
	-- end
	--
	return M
end

return M
