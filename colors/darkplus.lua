vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

vim.o.termguicolors = true
vim.g.colors_name = "darkplus"

local colors = {
	bg = "#1e1e1e",
	fg = "#d4d4d4",

	bg_dark = "#252526",
	bg_lighter = "#2d2d30",
	bg_highlight = "#2a2d2e",
	bg_visual = "#264f78",
	bg_search = "#613315",

	border = "#3e3e42",
	cursor_line = "#2a2d2e",
	cursor = "#aeafad",

	directive = "#569cd6",

	line_number = "#858585",
	line_number_active = "#c6c6c6",

	statusline_bg = "#252526",
	statusline_fg = "#ffffff",
	tabline_bg = "#2d2d2d",

	comment = "#6a9955",
	special_comment = "#dcdcaa", -- Yellow/gold for TODO/FIXME/NOTE

	keyword = "#c586c0", -- import, from, const, let, var, if, for, etc.
	keyword_control = "#c586c0", -- return, break, continue
	keyword_function = "#569cd6", -- function, def, async, class (blue!)
	keyword_operator = "#569cd6", -- function, def, async, class (blue!)

	string = "#ce9178",
	string_escape = "#d7ba7d",
	char = "#ce9178",

	number = "#b5cea8",
	boolean = "#569cd6",
	null = "#569cd6",

	function_name = "#dcdcaa",
	function_call = "#dcdcaa",
	method = "#dcdcaa",

	type = "#4ec9b0",
	class = "#4ec9b0",
	interface = "#4ec9b0",
	enum = "#4ec9b0",
	type_builtin = "#569cd6",

	variable = "#9cdcfe",
	parameter = "#9cdcfe",
	property = "#9cdcfe",
	field = "#9cdcfe",

	unused_variable = "#317da8",

	constant = "#4fc1ff",
	enum_member = "#4fc1ff",

	operator = "#d4d4d4",
	punctuation = "#d4d4d4",
	bracket = "#ffd700",

	decorator = "#dcdcaa",
	attribute = "#9cdcfe",
	label = "#c586c0",

	-- Markup (HTML/JSX/XML/Vue)
	tag = "#569cd6", -- Blue for tag names (<div>, <template>)
	fc_tag = "#4ec9b0",
	tag_builtin = "#569cd6",
	tag_attribute = "#9cdcfe",
	tag_delimiter = "#808080",

	css_class = "#d7ba7d",
	css_id = "#d7ba7d",
	css_tag = "#d7ba7d",
	css_property = "#9cdcfe",
	css_value = "#ce9178",
	css_unit = "#b5cea8",
	css_function = "#dcdcaa",
	css_at_rule = "#c586c0",

	regex = "#d16969",
	regex_special = "#d7ba7d",

	markdown_heading = "#569cd6",
	markdown_code = "#ce9178",
	markdown_link = "#4ec9b0",

	namespace = "#4ec9b0",
	module = "#4ec9b0",

	error = "#f48771",
	warning = "#cca700",
	info = "#75beff",
	hint = "#eeeeb3",

	-- Diff
	diff_add = "#487e02",
	diff_change = "#1b3d6b",
	diff_delete = "#94151b",
	diff_text = "#2f5976",

	-- Git
	git_add = "#81b88b",
	git_change = "#e2c08d",
	git_delete = "#c74e39",
}

-- Editor UI
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.bg_dark })
hl("FloatBorder", { fg = colors.border, bg = colors.bg_dark })
hl("ColorColumn", { bg = colors.bg_highlight })
hl("Cursor", { fg = colors.bg, bg = colors.cursor })
hl("lCursor", { fg = colors.bg, bg = colors.cursor })
hl("CursorIM", { fg = colors.bg, bg = colors.cursor })
hl("CursorLine", { bg = colors.cursor_line })
hl("CursorColumn", { bg = colors.cursor_line })
hl("CursorLineNr", { fg = colors.line_number_active, bold = true })
hl("LineNr", { fg = colors.line_number })
hl("SignColumn", { bg = colors.bg })
hl("Visual", { bg = colors.bg_visual })
hl("VisualNOS", { bg = colors.bg_visual })
hl("Search", { bg = colors.bg_search })
hl("IncSearch", { bg = colors.bg_search, underline = true })
hl("CurSearch", { bg = "#4a4a00" })
hl("MatchParen", { bg = "#3b3b3b", underline = true })
hl("Pmenu", { fg = colors.fg, bg = colors.bg_dark })
hl("PmenuSel", { fg = colors.fg, bg = colors.bg_visual })
hl("PmenuSbar", { bg = colors.bg_highlight })
hl("PmenuThumb", { bg = colors.border })
hl("StatusLine", { fg = colors.statusline_fg, bg = colors.statusline_bg })
hl("StatusLineNC", { fg = colors.line_number, bg = colors.bg_dark })
hl("TabLine", { fg = colors.fg, bg = colors.tabline_bg })
hl("TabLineSel", { fg = colors.fg, bg = colors.bg })
hl("TabLineFill", { bg = colors.tabline_bg })
hl("VertSplit", { fg = colors.border })
hl("WinSeparator", { fg = colors.border })
hl("Folded", { fg = colors.comment, bg = colors.bg_highlight })
hl("FoldColumn", { fg = colors.line_number, bg = colors.bg })
hl("Directory", { fg = colors.type })
hl("Title", { fg = colors.type, bold = true })
hl("ErrorMsg", { fg = colors.error })
hl("WarningMsg", { fg = colors.warning })
hl("MoreMsg", { fg = colors.function_name })
hl("ModeMsg", { fg = colors.function_name })
hl("Question", { fg = colors.function_name })
hl("NonText", { fg = colors.line_number })
hl("SpecialKey", { fg = colors.line_number })
hl("Whitespace", { fg = "#3b3b3b" })
hl("EndOfBuffer", { fg = colors.bg })
hl("WildMenu", { fg = colors.bg, bg = colors.function_name })

-- Traditional Syntax Highlighting
hl("Comment", { fg = colors.comment, italic = true })
hl("Constant", { fg = colors.constant })
hl("String", { fg = colors.string })
hl("Character", { fg = colors.char })
hl("Number", { fg = colors.number })
hl("Boolean", { fg = colors.boolean })
hl("Float", { fg = colors.number })
hl("Identifier", { fg = colors.variable })
hl("Function", { fg = colors.function_name })
hl("Statement", { fg = colors.keyword })
hl("Conditional", { fg = colors.keyword })
hl("Repeat", { fg = colors.keyword })
hl("Label", { fg = colors.label })
hl("Operator", { fg = colors.operator })
hl("Keyword", { fg = colors.keyword })
hl("Exception", { fg = colors.keyword })
hl("PreProc", { fg = colors.keyword })
hl("Include", { fg = colors.keyword })
hl("Define", { fg = colors.keyword_function })
hl("Macro", { fg = colors.function_name })
hl("PreCondit", { fg = colors.keyword })
hl("Type", { fg = colors.type })
hl("StorageClass", { fg = colors.keyword_function })
hl("Structure", { fg = colors.keyword_function })
hl("Typedef", { fg = colors.type })
hl("Special", { fg = colors.decorator })
hl("SpecialChar", { fg = colors.string_escape })
hl("Tag", { fg = colors.tag })
hl("Delimiter", { fg = colors.punctuation })
hl("Debug", { fg = colors.error })
hl("Underlined", { fg = colors.variable, underline = true })
hl("Ignore", { fg = colors.line_number })
hl("Error", { fg = colors.error, bold = true })

hl("@comment", { fg = colors.comment, italic = true })
hl("@comment.documentation", { fg = colors.comment, italic = true })
hl("@comment.warning", { fg = colors.special_comment, bold = true })
hl("@comment.error", { fg = colors.error, bold = true })
hl("@comment.todo", { fg = colors.special_comment })
hl("@comment.note", { fg = colors.special_comment })

hl("@constant", { fg = colors.constant })
hl("@constant.builtin", { fg = colors.boolean })
hl("@constant.macro", { fg = colors.constant })
hl("@string", { fg = colors.string })
hl("@string.regex", { fg = colors.regex })
hl("@string.escape", { fg = colors.string_escape })
hl("@string.special", { fg = colors.string_escape })
hl("@string.special.symbol", { fg = colors.string_escape })
hl("@string.special.url", { fg = colors.string, underline = true })
hl("@character", { fg = colors.char })
hl("@character.special", { fg = colors.string_escape })
hl("@number", { fg = colors.number })
hl("@number.float", { fg = colors.number })
hl("@boolean", { fg = colors.boolean })
hl("@float", { fg = colors.number })

-- Functions & Methods
hl("@function", { fg = colors.function_name })
hl("@function.builtin", { fg = colors.function_name })
hl("@function.call", { fg = colors.function_call })
hl("@function.macro", { fg = colors.function_name })
hl("@function.method", { fg = colors.method })
hl("@function.method.call", { fg = colors.method })
hl("@method", { fg = colors.method })
hl("@method.call", { fg = colors.method })
hl("@constructor", { fg = colors.type })
hl("@parameter", { fg = colors.parameter })
hl("@parameter.reference", { fg = colors.parameter })

hl("@keyword", { fg = colors.keyword })
hl("@keyword.coroutine", { fg = colors.keyword_function }) -- async = blue
hl("@keyword.function", { fg = colors.keyword_function }) -- def, function = blue
hl("@keyword.operator", { fg = colors.keyword_operator })
hl("@keyword.return", { fg = colors.keyword_control })
hl("@keyword.exception", { fg = colors.keyword })
hl("@keyword.import", { fg = colors.keyword })
hl("@keyword.repeat", { fg = colors.keyword })
hl("@keyword.conditional", { fg = colors.keyword })
hl("@conditional", { fg = colors.keyword })
hl("@repeat", { fg = colors.keyword })
hl("@label", { fg = colors.label })
hl("@exception", { fg = colors.keyword })
hl("@keyword.directive", { fg = colors.keyword })
hl("@keyword.directive.define", { fg = colors.keyword })

hl("@keyword.imported.python", { fg = colors.keyword_function })
hl("@keyword.function.python", { fg = colors.keyword_function })
hl("@storageclass.python", { fg = colors.keyword_function })
hl("@keyword.type", { fg = colors.keyword_function })
hl("@keyword.module", { fg = colors.namespace })

hl("@keyword.class", { fg = colors.keyword_function })
hl("@function.imported", { fg = colors.function_name })
hl("@function.call", { fg = colors.function_name })
hl("@constructor.call", { fg = colors.type })

-- Operators & Punctuation
hl("@operator", { fg = colors.operator })
hl("@punctuation.delimiter", { fg = colors.punctuation })
hl("@punctuation.bracket", { fg = colors.punctuation })
hl("@punctuation.special", { fg = colors.punctuation })

-- Types
hl("@type", { fg = colors.type })
hl("@type.builtin", { fg = colors.type_builtin })
hl("@type.definition", { fg = colors.type })
hl("@type.qualifier", { fg = colors.keyword_function }) -- class qualifier = blue
hl("@storageclass", { fg = colors.keyword_function })
hl("@namespace", { fg = colors.namespace })

hl("@module", { fg = colors.module })
hl("@module.builtin", { fg = colors.module })

hl("@keyword.module", { fg = colors.keyword_function })

-- hl("@include", { fg = colors.keyword })
-- hl("@preproc", { fg = colors.keyword })

-- Variables & Properties
hl("@variable", { fg = colors.variable })
hl("@variable.builtin", { fg = colors.boolean })
hl("@variable.parameter", { fg = colors.parameter })
hl("@variable.member", { fg = colors.property })
hl("@property", { fg = colors.property })
hl("@field", { fg = colors.field })
hl("@attribute", { fg = colors.attribute })

-- Special
hl("@decorator", { fg = colors.decorator })
hl("@annotation", { fg = colors.decorator })

-- Text & Markup
hl("@text", { fg = colors.fg })
hl("@text.strong", { fg = colors.fg, bold = true })
hl("@text.emphasis", { fg = colors.fg, italic = true })
hl("@text.underline", { underline = true })
hl("@text.strike", { strikethrough = true })
hl("@text.title", { fg = colors.markdown_heading, bold = true })
hl("@text.literal", { fg = colors.markdown_code })
hl("@text.uri", { fg = colors.markdown_link, underline = true })
hl("@text.math", { fg = colors.function_name })
hl("@text.reference", { fg = colors.type })
hl("@text.environment", { fg = colors.keyword })
hl("@text.environment.name", { fg = colors.type })
hl("@text.note", { fg = colors.special_comment })
hl("@text.warning", { fg = colors.warning })
hl("@text.danger", { fg = colors.error })

-- Tags (HTML/JSX/XML/Vue)
hl("@tag", { fg = colors.tag })
hl("@tag.tsx", { fg = colors.fc_tag })
hl("@tag.jsx", { fg = colors.fc_tag })
hl("@tag.builtin", { fg = colors.tag_builtin })
hl("@tag.attribute", { fg = colors.tag_attribute })
hl("@tag.attribute.tsx", { fg = colors.tag_attribute })
hl("@tag.attribute.jsx", { fg = colors.tag_attribute })
hl("@tag.delimiter", { fg = colors.tag_delimiter })

-- In Python, 'class' and 'def' are NOT @keyword but @keyword.function in newer treesitter
hl("@variable.builtin.python", { fg = colors.boolean }) -- self, cls = BLUE
hl("@type.builtin.python", { fg = colors.type })
hl("@function.builtin.python", { fg = colors.function_name }) -- print, len = YELLOW
hl("@constructor.python", { fg = colors.function_name }) -- Column, String = YELLOW

-- JavaScript/TypeScript
hl("@constructor.javascript", { fg = colors.type })
hl("@constructor.typescript", { fg = colors.type })
hl("@keyword.function.javascript", { fg = colors.keyword_function })
hl("@keyword.function.typescript", { fg = colors.keyword_function })
hl("@type.builtin.typescript", { fg = colors.type_builtin })

-- CSS/SCSS
hl("@property.css", { fg = colors.css_property })
hl("@type.css", { fg = colors.css_class })
hl("@string.css", { fg = colors.css_value })
hl("@number.css", { fg = colors.css_unit })
hl("@function.css", { fg = colors.css_function })
hl("@keyword.css", { fg = colors.css_at_rule })
hl("@property.scss", { fg = colors.css_property })
hl("@type.scss", { fg = colors.css_class })

-- HTML
hl("@tag.html", { fg = colors.tag })
hl("@tag.attribute.html", { fg = colors.tag_attribute })

-- JSON
hl("@label.json", { fg = colors.property })
hl("@string.json", { fg = colors.string })

-- YAML
hl("@field.yaml", { fg = colors.property })
hl("@string.yaml", { fg = colors.string })

-- Markdown
hl("@text.title.markdown", { fg = colors.markdown_heading, bold = true })
hl("@text.literal.markdown", { fg = colors.markdown_code })
hl("@text.uri.markdown", { fg = colors.markdown_link, underline = true })

hl("@lsp.type.class", { fg = colors.class })
hl("@lsp.type.decorator", { fg = colors.class })
hl("@lsp.type.annotation", { fg = colors.class })
hl("@lsp.type.enum", { fg = colors.enum })
hl("@lsp.type.enumMember", { fg = colors.enum_member })
hl("@lsp.type.function", { fg = colors.function_name })
hl("@lsp.type.interface", { fg = colors.interface })
hl("@lsp.type.macro", { fg = colors.function_name })
hl("@lsp.type.method", { fg = colors.method })
hl("@lsp.type.namespace", { fg = colors.namespace })
hl("@lsp.type.parameter", { fg = colors.parameter })
hl("@lsp.type.property", { fg = colors.property })
hl("@lsp.type.struct", { fg = colors.type })
hl("@lsp.type.type", { fg = colors.type })
hl("@lsp.type.typeParameter", { fg = colors.type })
hl("@lsp.type.variable", { fg = colors.variable })
hl("@lsp.type.keyword", { fg = colors.keyword })

hl("@lsp.mod.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.function.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.class.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.variable.defaultLibrary", { fg = colors.boolean })

hl("DiagnosticError", { fg = colors.error })
hl("DiagnosticWarn", { fg = colors.warning })
hl("DiagnosticInfo", { fg = colors.info })
hl("DiagnosticHint", { fg = colors.hint })
hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })
hl("DiagnosticVirtualTextError", { fg = colors.error })
hl("DiagnosticVirtualTextWarn", { fg = colors.warning })
hl("DiagnosticVirtualTextInfo", { fg = colors.info })
hl("DiagnosticVirtualTextHint", { fg = colors.hint })
hl("DiagnosticSignError", { fg = colors.error })
hl("DiagnosticSignWarn", { fg = colors.warning })
hl("DiagnosticSignInfo", { fg = colors.info })
hl("DiagnosticSignHint", { fg = colors.hint })

hl("LspReferenceText", { bg = colors.bg_highlight })
hl("LspReferenceRead", { bg = colors.bg_highlight })
hl("LspReferenceWrite", { bg = colors.bg_highlight })
hl("LspSignatureActiveParameter", { fg = colors.function_name, bold = true })

-- Diff
hl("DiffAdd", { bg = colors.diff_add })
hl("DiffChange", { bg = colors.diff_change })
hl("DiffDelete", { fg = colors.diff_delete, bg = colors.diff_delete })
hl("DiffText", { bg = colors.diff_text })
hl("diffAdded", { fg = colors.git_add })
hl("diffRemoved", { fg = colors.git_delete })
hl("diffChanged", { fg = colors.git_change })
hl("diffOldFile", { fg = colors.git_delete })
hl("diffNewFile", { fg = colors.git_add })
hl("diffFile", { fg = colors.function_name })
hl("diffLine", { fg = colors.comment })
hl("diffIndexLine", { fg = colors.comment })

-- Git Signs / Gitsigns.nvim
hl("GitSignsAdd", { fg = colors.git_add })
hl("GitSignsChange", { fg = colors.git_change })
hl("GitSignsDelete", { fg = colors.git_delete })
hl("GitSignsAddNr", { fg = colors.git_add })
hl("GitSignsChangeNr", { fg = colors.git_change })
hl("GitSignsDeleteNr", { fg = colors.git_delete })
hl("GitSignsAddLn", { bg = colors.diff_add })
hl("GitSignsChangeLn", { bg = colors.diff_change })
hl("GitSignsDeleteLn", { bg = colors.diff_delete })

hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopeBorder", { fg = colors.border, bg = colors.bg_dark })
hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopePromptBorder", { fg = colors.border, bg = colors.bg_dark })
hl("TelescopePromptTitle", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopePreviewTitle", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopeResultsTitle", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopeSelection", { fg = colors.fg, bg = colors.bg_visual })
hl("TelescopeSelectionCaret", { fg = colors.function_name, bg = colors.bg_visual })
hl("TelescopeMultiSelection", { fg = colors.type, bg = colors.bg_visual })
hl("TelescopeMatching", { fg = colors.function_name, bold = true })

hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NvimTreeFolderName", { fg = colors.type })
hl("NvimTreeFolderIcon", { fg = colors.type })
hl("NvimTreeOpenedFolderName", { fg = colors.type, bold = true })
hl("NvimTreeEmptyFolderName", { fg = colors.comment })
hl("NvimTreeRootFolder", { fg = colors.keyword, bold = true })
hl("NvimTreeSpecialFile", { fg = colors.warning, underline = true })
hl("NvimTreeExecFile", { fg = colors.git_add, bold = true })
hl("NvimTreeImageFile", { fg = colors.function_name })
hl("NvimTreeGitDirty", { fg = colors.git_change })
hl("NvimTreeGitStaged", { fg = colors.git_add })
hl("NvimTreeGitMerge", { fg = colors.git_change })
hl("NvimTreeGitRenamed", { fg = colors.git_change })
hl("NvimTreeGitNew", { fg = colors.git_add })
hl("NvimTreeGitDeleted", { fg = colors.git_delete })
hl("NvimTreeIndentMarker", { fg = colors.border })

hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NeoTreeDirectoryName", { fg = colors.fg })
hl("NeoTreeDirectoryIcon", { fg = colors.boolean })
hl("NeoTreeOpenedFolderName", { fg = colors.type, bold = true })
hl("NeoTreeEmptyFolderName", { fg = colors.comment })
hl("NeoTreeRootName", { fg = colors.keyword, bold = true })
hl("NeoTreeSpecialFile", { fg = colors.warning, underline = true })
hl("NeoTreeExecutable", { fg = colors.git_add, bold = true })
hl("NeoTreeImageFile", { fg = colors.function_name })
hl("NeoTreeGitModified", { fg = colors.git_change })
hl("NeoTreeGitStaged", { fg = colors.git_add })
hl("NeoTreeGitConflict", { fg = colors.git_change })
hl("NeoTreeGitRenamed", { fg = colors.git_change })
hl("NeoTreeGitAdded", { fg = colors.git_add })
hl("NeoTreeGitDeleted", { fg = colors.git_delete })
hl("NeoTreeIndentMarker", { fg = colors.border })

hl("WhichKey", { fg = colors.function_name })
hl("WhichKeyGroup", { fg = colors.keyword })
hl("WhichKeyDesc", { fg = colors.fg })
hl("WhichKeySeparator", { fg = colors.comment })
hl("WhichKeyFloat", { bg = colors.bg_dark })
hl("WhichKeyBorder", { fg = colors.border, bg = colors.bg_dark })

hl("IndentBlanklineChar", { fg = "#3b3b3b", nocombine = true })
hl("IndentBlanklineContextChar", { fg = colors.border, nocombine = true })
hl("IndentBlanklineContextStart", { underline = true, sp = colors.border })
hl("IblIndent", { fg = "#3b3b3b", nocombine = true })
hl("IblScope", { fg = colors.border, nocombine = true })

hl("NoicePopup", { fg = colors.fg, bg = colors.bg_dark })
hl("NoiceBorder", { fg = colors.border, bg = colors.bg_dark })

hl("NotifyERRORBorder", { fg = colors.error })
hl("NotifyWARNBorder", { fg = colors.warning })
hl("NotifyINFOBorder", { fg = colors.info })

hl("CmpItemAbbrMatch", { fg = colors.function_name, bold = true })
hl("CmpItemKindFunction", { fg = colors.function_name })
hl("CmpItemKindClass", { fg = colors.class })

hl("DiagnosticUnnecessary", { fg = colors.unused_variable, italic = false, undercurl = true })

hl("SpecialComment", { fg = colors.special_comment, bold = true })

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*",
	callback = function()
		local special_comments = {
			"TODO",
			"NOTE",
			"FIXME",
			"BUG",
			"HACK",
			"WARN",
			"WARNING",
			"PERF",
			"OPTIMIZE",
			"REVIEW",
			"XXX",
			"DEPRECATED",
		}

		local pattern = [[\v]] .. table.concat(special_comments, "|")
		vim.fn.matchadd("SpecialComment", pattern)
	end,
})

-- Define your directive keywords
local directive_keywords = {
	"package",
	"namespace",
	"module",
	"mod",
	"crate",
	"library",
	"program",
	"unit",
	"implementation",
	"context",
	"assembly",
	"baremodule",
	"record",
	"macro",
}

-- Convert to a set for faster lookup
local directive_set = {}
for _, kw in ipairs(directive_keywords) do
	directive_set[kw] = true
end

local ns = vim.api.nvim_create_namespace("directive_keywords")

local function highlight_directive_keywords()
	local bufnr = vim.api.nvim_get_current_buf()

	local ok, parser = pcall(vim.treesitter.get_parser, bufnr)
	if not ok or not parser then
		return
	end

	local ok_parse, trees = pcall(parser.parse, parser)
	if not ok_parse or not trees or #trees == 0 then
		return
	end

	local tree = trees[1]
	local root = tree:root()
	local lang = parser:lang()

	vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)

	local ok_query, query = pcall(vim.treesitter.query.get, lang, "highlights")
	if not ok_query or not query then
		return
	end

	for id, node in query:iter_captures(root, bufnr, 0, -1) do
		local capture_name = query.captures[id]

		-- Check if this capture starts with "keyword"
		if capture_name and capture_name:match("^keyword") then
			local ok_text, text = pcall(vim.treesitter.get_node_text, node, bufnr)

			if ok_text and text then
				-- Trim whitespace and get just the first word
				text = text:match("^%s*(%S+)")

				-- Check if the actual text matches any of our directive keywords
				if text and directive_set[text] then
					local start_row, start_col, end_row, end_col = node:range()

					pcall(vim.api.nvim_buf_set_extmark, bufnr, ns, start_row, start_col, {
						end_row = end_row,
						end_col = end_col,
						hl_group = "DirectiveKeyword",
						priority = 150, -- Higher priority than default treesitter (100)
					})
				end
			end
		end
	end
end

vim.api.nvim_set_hl(0, "DirectiveKeyword", {
	fg = colors.directive,
	bold = true,
})

-- Auto-trigger on buffer events with debouncing
local timer = nil
local function debounced_highlight()
	if timer then
		timer:stop()
	end
	timer = vim.defer_fn(function()
		highlight_directive_keywords()
		timer = nil
	end, 10)
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, { callback = highlight_directive_keywords })
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, { callback = debounced_highlight })
vim.api.nvim_create_user_command("HighlightDirectives", highlight_directive_keywords, {})
vim.defer_fn(highlight_directive_keywords, 100)
