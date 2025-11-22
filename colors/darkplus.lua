vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "darkplus"

local colors = {
	-- Background & Foreground
	bg = "#1e1e1e",
	fg = "#d4d4d4",

	-- UI Elements
	bg_dark = "#252526",
	bg_lighter = "#2d2d30",
	bg_highlight = "#2a2d2e",
	bg_visual = "#264f78",
	bg_search = "#613315",

	border = "#3e3e42",
	cursor_line = "#2a2d2e",
	cursor = "#aeafad",

	line_number = "#858585",
	line_number_active = "#c6c6c6",

	-- Status & Tabs
	statusline_bg = "#252526",
	statusline_fg = "#ffffff",
	tabline_bg = "#2d2d2d",

	-- EXACT Syntax Colors from VS Code Dark+
	comment = "#6a9955", -- Green comments
	comment_todo = "#dcdcaa", -- Yellow/gold for TODO/FIXME/NOTE

	-- Keywords - Pink/Purple
	keyword = "#c586c0", -- import, from, const, let, var, if, for, etc.
	keyword_control = "#c586c0", -- return, break, continue
	keyword_function = "#569cd6", -- function, def, async, class (blue!)

	-- Strings & Characters
	string = "#ce9178", -- Orange/salmon strings
	string_escape = "#d7ba7d", -- Gold for escape sequences
	char = "#ce9178",

	-- Numbers & Booleans
	number = "#b5cea8", -- Light green numbers
	boolean = "#569cd6", -- Blue for true/false/nil/None
	null = "#569cd6", -- Blue for null/undefined/None

	-- Functions & Methods
	function_name = "#dcdcaa", -- Yellow/gold for function declarations
	function_call = "#dcdcaa", -- Yellow for function calls
	method = "#dcdcaa", -- Yellow for methods

	-- Types & Classes
	type = "#4ec9b0", -- Teal/cyan for types
	class = "#4ec9b0", -- Teal for class names
	interface = "#4ec9b0", -- Teal for interfaces
	enum = "#4ec9b0", -- Teal for enums
	type_builtin = "#569cd6", -- Blue for built-in types (string, number, etc.)

	-- Variables & Parameters
	variable = "#9cdcfe", -- Light blue for variables
	parameter = "#9cdcfe", -- Light blue for parameters
	property = "#9cdcfe", -- Light blue for object properties
	field = "#9cdcfe", -- Light blue for fields

	-- Constants & Enums
	constant = "#4fc1ff", -- Bright cyan for constants
	enum_member = "#4fc1ff", -- Bright cyan for enum members

	-- Operators & Punctuation
	operator = "#d4d4d4", -- White/light gray
	punctuation = "#d4d4d4", -- White/light gray
	bracket = "#ffd700", -- Gold for brackets in some contexts

	-- Special
	decorator = "#dcdcaa", -- Yellow for decorators (@decorator)
	attribute = "#9cdcfe", -- Light blue for attributes
	label = "#c586c0", -- Pink for labels

	-- Markup (HTML/JSX/XML/Vue)
	tag = "#569cd6", -- Blue for tag names (<div>, <template>)
	tag_builtin = "#569cd6", -- Blue for built-in tags
	tag_attribute = "#9cdcfe", -- Light blue for attributes (class, id, etc.)
	tag_delimiter = "#808080", -- Gray for < > /

	-- CSS/SCSS
	css_class = "#d7ba7d", -- Gold for CSS class selectors
	css_id = "#d7ba7d", -- Gold for CSS id selectors
	css_tag = "#d7ba7d", -- Gold for CSS tag selectors
	css_property = "#9cdcfe", -- Light blue for CSS properties
	css_value = "#ce9178", -- Orange for CSS values
	css_unit = "#b5cea8", -- Light green for units
	css_function = "#dcdcaa", -- Yellow for CSS functions
	css_at_rule = "#c586c0", -- Pink for @apply, @media, etc.

	-- Regex
	regex = "#d16969", -- Red for regex
	regex_special = "#d7ba7d", -- Gold for special regex chars

	-- Markdown
	markdown_heading = "#569cd6", -- Blue for headings
	markdown_code = "#ce9178", -- Orange for inline code
	markdown_link = "#4ec9b0", -- Teal for links

	-- Special tokens
	namespace = "#4ec9b0", -- Teal for namespaces
	module = "#4ec9b0", -- Teal for modules

	-- Diagnostics
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

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- Editor UI
-- ============================================================================
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

-- ============================================================================
-- Traditional Syntax Highlighting
-- ============================================================================
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
hl("SpecialComment", { fg = colors.comment_todo, italic = true })
hl("Debug", { fg = colors.error })
hl("Underlined", { fg = colors.variable, underline = true })
hl("Ignore", { fg = colors.line_number })
hl("Error", { fg = colors.error, bold = true })
hl("Todo", { fg = colors.comment_todo, bold = true })

-- ============================================================================
-- Tree-sitter Highlighting (EXACT VS Code mapping)
-- ============================================================================

-- Comments
hl("@comment", { fg = colors.comment, italic = true })
hl("@comment.documentation", { fg = colors.comment, italic = true })
hl("@comment.todo", { fg = colors.comment_todo, bold = true })
hl("@comment.note", { fg = colors.comment_todo, bold = true })
hl("@comment.warning", { fg = colors.comment_todo, bold = true })
hl("@comment.error", { fg = colors.error, bold = true })

-- Constants
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
hl("@constructor", { fg = colors.function_name }) -- Yellow for constructors like Column()
hl("@parameter", { fg = colors.parameter })
hl("@parameter.reference", { fg = colors.parameter })

-- Keywords
hl("@keyword", { fg = colors.keyword })
hl("@keyword.coroutine", { fg = colors.keyword_function }) -- async = blue
hl("@keyword.function", { fg = colors.keyword_function }) -- def, function = blue
hl("@keyword.operator", { fg = colors.keyword })
hl("@keyword.return", { fg = colors.keyword_control })
hl("@keyword.exception", { fg = colors.keyword })
hl("@keyword.import", { fg = colors.keyword })
hl("@keyword.repeat", { fg = colors.keyword })
hl("@keyword.conditional", { fg = colors.keyword })
hl("@conditional", { fg = colors.keyword })
hl("@repeat", { fg = colors.keyword })
hl("@label", { fg = colors.label })
hl("@exception", { fg = colors.keyword })

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
hl("@include", { fg = colors.keyword })
hl("@preproc", { fg = colors.keyword })

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
hl("@text.note", { fg = colors.comment_todo })
hl("@text.warning", { fg = colors.warning })
hl("@text.danger", { fg = colors.error })

-- Tags (HTML/JSX/XML/Vue)
hl("@tag", { fg = colors.tag })
hl("@tag.builtin", { fg = colors.tag_builtin })
hl("@tag.attribute", { fg = colors.tag_attribute })
hl("@tag.delimiter", { fg = colors.tag_delimiter })

-- ============================================================================
-- Language-Specific Overrides (CRITICAL FOR VS CODE MATCHING)
-- ============================================================================

-- Python: The key to matching VS Code!
-- In Python, 'class' and 'def' are NOT @keyword but @keyword.function in newer treesitter
hl("@keyword.function.python", { fg = colors.keyword_function }) -- def = BLUE
hl("@keyword.coroutine.python", { fg = colors.keyword_function }) -- async = BLUE
hl("@decorator.python", { fg = colors.decorator })
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

-- JSX/TSX
hl("@tag.tsx", { fg = colors.tag })
hl("@tag.jsx", { fg = colors.tag })
hl("@tag.attribute.tsx", { fg = colors.tag_attribute })
hl("@tag.attribute.jsx", { fg = colors.tag_attribute })

-- Vue
hl("@tag.vue", { fg = colors.tag })
hl("@tag.attribute.vue", { fg = colors.tag_attribute })

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

-- Go
hl("@type.builtin.go", { fg = colors.type })
hl("@keyword.function.go", { fg = colors.keyword_function })

-- Rust
hl("@type.builtin.rust", { fg = colors.type_builtin })
hl("@keyword.function.rust", { fg = colors.keyword_function })

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

-- ============================================================================
-- LSP Semantic Tokens (These override Treesitter when LSP is active)
-- ============================================================================
hl("@lsp.type.class", { fg = colors.class })
hl("@lsp.type.decorator", { fg = colors.decorator })
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

-- LSP modifiers for built-in functions/types (CRITICAL for uuid4, Column, etc.)
hl("@lsp.mod.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.function.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.class.defaultLibrary", { fg = colors.function_name })
hl("@lsp.typemod.variable.defaultLibrary", { fg = colors.boolean })

-- ============================================================================
-- Diagnostics
-- ============================================================================
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

-- LSP References
hl("LspReferenceText", { bg = colors.bg_highlight })
hl("LspReferenceRead", { bg = colors.bg_highlight })
hl("LspReferenceWrite", { bg = colors.bg_highlight })
hl("LspSignatureActiveParameter", { fg = colors.function_name, bold = true })

-- ============================================================================
-- Diff
-- ============================================================================
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

-- ============================================================================
-- Git Signs / Gitsigns.nvim
-- ============================================================================
hl("GitSignsAdd", { fg = colors.git_add })
hl("GitSignsChange", { fg = colors.git_change })
hl("GitSignsDelete", { fg = colors.git_delete })
hl("GitSignsAddNr", { fg = colors.git_add })
hl("GitSignsChangeNr", { fg = colors.git_change })
hl("GitSignsDeleteNr", { fg = colors.git_delete })
hl("GitSignsAddLn", { bg = colors.diff_add })
hl("GitSignsChangeLn", { bg = colors.diff_change })
hl("GitSignsDeleteLn", { bg = colors.diff_delete })

-- ============================================================================
-- Telescope
-- ============================================================================
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

-- ============================================================================
-- NvimTree / Neo-tree
-- ============================================================================
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

-- NeoTree
hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NeoTreeFolderName", { fg = colors.type })
hl("NeoTreeFolderIcon", { fg = colors.type })
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

-- ============================================================================
-- Which-key
-- ============================================================================
hl("WhichKey", { fg = colors.function_name })
hl("WhichKeyGroup", { fg = colors.keyword })
hl("WhichKeyDesc", { fg = colors.fg })
hl("WhichKeySeparator", { fg = colors.comment })
hl("WhichKeyFloat", { bg = colors.bg_dark })
hl("WhichKeyBorder", { fg = colors.border, bg = colors.bg_dark })

-- ============================================================================
-- IndentBlankline
-- ============================================================================
hl("IndentBlanklineChar", { fg = "#3b3b3b", nocombine = true })
hl("IndentBlanklineContextChar", { fg = colors.border, nocombine = true })
hl("IndentBlanklineContextStart", { underline = true, sp = colors.border })
hl("IblIndent", { fg = "#3b3b3b", nocombine = true })
hl("IblScope", { fg = colors.border, nocombine = true })

-- ============================================================================
-- Additional Plugin Support (Truncated for brevity - same as before)
-- ============================================================================

-- Noice
hl("NoicePopup", { fg = colors.fg, bg = colors.bg_dark })
hl("NoiceBorder", { fg = colors.border, bg = colors.bg_dark })

-- Notify
hl("NotifyERRORBorder", { fg = colors.error })
hl("NotifyWARNBorder", { fg = colors.warning })
hl("NotifyINFOBorder", { fg = colors.info })

-- nvim-cmp
hl("CmpItemAbbrMatch", { fg = colors.function_name, bold = true })
hl("CmpItemKindFunction", { fg = colors.function_name })
hl("CmpItemKindClass", { fg = colors.class })

-- ============================================================================
-- AGGRESSIVE FIX: Force Python syntax highlighting to match VS Code exactly
-- ============================================================================

-- Define the exact colors we need
hl("PythonClassKeyword", { fg = "#569cd6" }) -- BLUE
hl("PythonDefKeyword", { fg = "#569cd6" }) -- BLUE
hl("PythonAsyncKeyword", { fg = "#569cd6" }) -- BLUE
hl("PythonImportedName", { fg = "#dcdcaa" }) -- YELLOW

-- Treesitter fallback highlights
hl("@keyword.class.python", { fg = colors.keyword_function })
hl("@keyword.coroutine.python", { fg = colors.keyword_function })
hl("@keyword.function.python", { fg = colors.keyword_function })
hl("@function.imported.python", { fg = colors.function_name })
hl("@keyword.type.python", { fg = colors.keyword_function })
hl("@storageclass.python", { fg = colors.keyword_function })
hl("@function.call.python", { fg = colors.function_name })
hl("@constructor.call.python", { fg = colors.function_name })

-- Aggressive autocommand that uses multiple strategies
vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "BufWinEnter" }, {
	pattern = "python",
	callback = function(ev)
		local buf = ev.buf

		-- Strategy 1: Override via vim.treesitter.highlighter
		vim.defer_fn(function()
			if not vim.api.nvim_buf_is_valid(buf) then
				return
			end

			-- Get the highlighter for this buffer
			local ok, ts_hl = pcall(require, "vim.treesitter.highlighter")
			if ok and ts_hl.active and ts_hl.active[buf] then
				-- Force re-highlight with our custom groups
				pcall(ts_hl.active[buf].tree.parse, ts_hl.active[buf].tree)
			end
		end, 100)

		-- Strategy 2: Direct syntax override (most reliable)
		vim.defer_fn(function()
			if not vim.api.nvim_buf_is_valid(buf) then
				return
			end

			vim.api.nvim_buf_call(buf, function()
				-- Clear any conflicting syntax
				vim.cmd([[
					syntax clear pythonStatement
					
					" Match 'class' keyword specifically
					syntax keyword PythonClassKeyword class
					highlight link PythonClassKeyword @keyword.class.python
					
					" Match 'def' and 'async def' specifically  
					syntax keyword PythonDefKeyword def async
					highlight link PythonDefKeyword @keyword.coroutine.python
					
					" Try to match imported names (this is tricky)
					syntax match PythonImportedName /\(from\s\+[a-zA-Z0-9_.]\+\s\+import\s\+\)\@<=[a-zA-Z0-9_]\+/
					highlight link PythonImportedName @function.imported.python
				]])
			end)
		end, 200)

		-- Strategy 3: Set buffer-local highlight overrides
		vim.defer_fn(function()
			if not vim.api.nvim_buf_is_valid(buf) then
				return
			end

			-- Directly set highlight for this buffer
			vim.api.nvim_set_hl(0, "@keyword.class.python", { fg = "#569cd6" })
			vim.api.nvim_set_hl(0, "@keyword.function.python", { fg = "#569cd6" })
			vim.api.nvim_set_hl(0, "@keyword.coroutine.python", { fg = "#569cd6" })
			vim.api.nvim_set_hl(0, "@function.imported.python", { fg = "#dcdcaa" })
		end, 250)
	end,
})
