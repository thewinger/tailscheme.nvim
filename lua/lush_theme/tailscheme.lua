--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local fg = hsl(210, 40, 98)
local bg = hsl(217, 33, 17)
local dark = hsl(222, 47, 11)
local white = hsl(210, 40, 98)
local comment = hsl(215, 16, 47)
local gray_light = hsl(213, 27, 84)
local gray = hsl(215, 20, 65)
local blue_bg = hsl(202, 80, 24)
local blue = hsl(199, 95, 74)
-- local green_light = hsl(171, 77, 64)
local green = hsl(160, 84, 39)
local cyan = hsl(187, 92, 69)
-- local red_light = hsl(353, 96, 90)
local red = hsl(351, 95, 71)
local orange = hsl(31, 97, 72)
local yellow = hsl(50, 98, 64)
local purple = hsl(255, 92, 76)
local magenta = hsl(329, 86, 70)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		ColorColumn({ bg = bg }), -- Columns set with 'colorcolumn'
		Conceal({ fg = gray }), -- Placeholder characters substituted for concealed text 						see 'conceallevel'
		Cursor({ fg = white, bg = bg }), -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor 						see 'hlsearch'
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used 						see 'guicursor'
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = dark }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground 						ctermfg OR guifg is not set.
		Directory({ fg = blue }), -- Directory names 						and other special names in listings
		DiffAdd({ fg = bg, bg = green }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = bg, bg = orange }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = bg, bg = red }), -- Diff mode: Deleted line |diff.txt|
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer({ fg = dark }), -- Filler lines 						~ after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		ErrorMsg({ fg = red, bg = bg, gui = "bold" }), -- Error messages on the command line
		VertSplit({ fg = gray }), -- Column separating vertically split windows
		Folded({ fg = gray, bg = bg }), -- Line used for closed folds
		FoldColumn({ fg = dark, bg = bg }), -- 'foldcolumn'
		SignColumn({ bg = bg }), -- Column where |signs| are displayed
		IncSearch({ fg = dark, bg = cyan }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ fg = dark, bg = blue }), -- |:substitute| replacement text highlighting
		LineNr({ fg = gray }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		-- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr({ fg = gray_light, gui = "bold" }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen({ fg = blue, bg = bg, gui = "underline" }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({}), -- 'showmode' message 						e.g., "-- INSERT -- "
		MsgArea({ fg = fg, bg = dark }), -- Area for messages and cmdline
		MsgSeparator({}), -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = green }), -- |more-prompt|
		NonText({ fg = bg }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text 						e.g., ">" displayed when a double-wide character doesn't fit at the end of the line. See also |hl-EndOfBuffer|.
		Normal({ fg = fg, bg = bg }), -- Normal text
		NormalFloat({ bg = dark }), -- Normal text in floating windows.
		FloatBorder({ fg = fg, bg = dark }), -- Border of floating windows.
		-- FloatTitle     { }, -- Title of floating windows.
		NormalNC({}), -- normal text in non-current windows
		Pmenu({ fg = gray_light, bg = dark, blend = 50 }), -- Popup menu: Normal item.
		PmenuSel({ fg = bg, bg = blue }), -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		PmenuSbar({ bg = dark }), -- Popup menu: Scrollbar.
		PmenuThumb({ bg = gray }), -- Popup menu: Thumb of the scrollbar.
		Question({ fg = orange }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ fg = dark, bg = blue }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ fg = dark, bg = green }), -- Last search pattern highlighting (see 'hlsearch'. Also used for similar items that need to stand out.
		SpecialKey({ fg = blue }), -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine({ fg = gray_light, bg = dark }), -- Status line of current window
		StatusLineNC({}), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        { }, -- Tab pages line, not active tab page label
		-- TabLineFill    { }, -- Tab pages line, where there are no labels
		-- TabLineSel     { }, -- Tab pages line, active tab page label
		Title({ fg = blue, gui = "bold" }), -- Titles for output from ":set all", ":autocmd" etc.
		Visual({ fg = dark, bg = blue }), -- Visual mode selection
		VisualNOS({ bg = bg }), -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = red, bg = bg }), -- Warning messages
		Whitespace({ fg = gray }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator({ fg = dark }), -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu({ fg = bg, bg = blue }), -- Current match in 'wildmenu' completion
		WinBar({ fg = dark }), -- Window bar of current window
		-- WinBarNC       {  fg = dark }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred 					* group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment({ fg = comment, gui = "italic" }), -- Any comment

		Constant({ fg = blue }), -- (* Any constant
		String({ fg = white }), --   A string constant: "this is a string"
		-- Character      { }, --   A character constant: 'c', '\n'
		Number({ fg = white }), --   A number constant: 234, 0xff
		Boolean({ fg = cyan }), --   A boolean constant: TRUE, false
		Float({ fg = white }), --   A floating point constant: 2.3e10

		Identifier({ fg = white }), -- (* Any variable name
		Function({ fg = magenta }), --   Function name (also: methods for classes

		Statement({ fg = magenta }), -- (* Any statement
		Conditional({ fg = blue }), --   if, then, else, endif, switch, etc.
		-- Repeat         { fg = magenta }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		Operator({ fg = gray }), --   "sizeof", "+", "*", etc.
		Keyword({ fg = gray }), --   any other keyword
		Exception({ fg = purple }), --   try, catch, throw

		PreProc({ fg = purple }), -- (* Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = cyan }), -- (* int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		Special({ fg = blue }), -- (* Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		Delimiter({ fg = gray_light }), --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment 					e.g. '\n'
		-- Debug          { }, --   Debugging statements

		Underlined({ gui = "underline" }), -- Text that stands out, HTML links
		Ignore({ fg = cyan, bg = bg, gui = "bold" }), -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template
		Error({ fg = bg, bg = red, gui = "bold" }), -- Any erroneous construct
		Todo({ fg = bg, bg = cyan, gui = "bold" }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		LspReferenceText({ bg = blue_bg }), -- Used for highlighting "text" references
		LspReferenceRead({ LspReferenceText }), -- Used for highlighting "read" references
		LspReferenceWrite({ LspReferenceText }), -- Used for highlighting "write" references
		LspCodeLens({ Comment }), -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark(|.
		LspCodeLensSeparator({ fg = white, gui = "italic" }), -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help					|.

		-- [Git]
		SignAdd({ fg = green }),
		SignChange({ fg = orange }),
		SignDelete({ fg = red }),
		GitSignsAdd({ SignAdd }),
		GitSignsChange({ SignChange }),
		GitSignsDelete({ SignDelete }),

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError({ fg = red }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline
		DiagnosticWarn({ fg = orange }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline
		DiagnosticInfo({ fg = cyan }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline
		DiagnosticHint({ fg = blue }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline
		DiagnosticOk({ fg = green }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError({ DiagnosticError, gui = "underline" }), -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "underline" }), -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "underline" }), -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint({ DiagnosticHint, gui = "underline" }), -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk({ DiagnosticOk, gui = "underline" }), -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float					|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- [Telescope]
		TelescopeSelection({ fg = dark, bg = blue }),
		TelescopeMatching({ fg = white, gui = "bold" }),
		TelescopeBorder({ fg = blue, bg = bg }),

		-- [IndentBlankline]
		IndentBlanklineContextChar({ fg = magenta }),
		IndentBlanklineContextStart({ gui = "underline" }),
		IndentBlanklineChar({ fg = gray }),
		IndentBlanklineSpaceChar({ fg = cyan }),
		IndentBlanklineSpaceCharBlankline({ fg = yellow }),

		-- [Illuminate]
		illuminateCurWord({ IncSearch }),
		illuminateWord({ IncSearch }),

		-- [Notify]
		NotifyERRORBorder({ fg = red }),
		NotifyERRORIcon({ fg = red }),
		NotifyERRORTitle({ fg = red }),
		NotifyWARNBorder({ fg = orange }),
		NotifyWARNIcon({ fg = orange }),
		NotifyWARNTitle({ fg = orange }),
		NotifyDEBUGBorder({ fg = gray }),
		NotifyDEBUGIcon({ fg = gray }),
		NotifyDEBUGTitle({ fg = gray }),
		NotifyTRACEBorder({ fg = purple }),
		NotifyTRACEIcon({ fg = purple }),
		NotifyTRACETitle({ fg = purple }),
		NotifyINFOBorder({ fg = blue }),
		NotifyINFOIcon({ fg = blue }),
		NotifyINFOTitle({ fg = blue }),
		NotifyERRORBody({ Normal }),
		NotifyWARNBody({ Normal }),
		NotifyINFOBody({ Normal }),
		NotifyDEBUGBody({ Normal }),
		NotifyTRACEBody({ Normal }),
		NotifyBackground({ bg = dark }),

		-- [Noice]
		NoiceCmdlinePopupTitle({ fg = magenta }),
		NoiceCmdlinePopupBorder({ fg = white }),
		NoiceCmdlineIcon({ fg = magenta }),

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym					"@text.literal"
		-- sym					'@text.literal'
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag

		sym("@tag.delimiter.tsx")({ fg = gray }),
		sym("@tag.builtin.tsx")({ fg = magenta }),
		sym("@tag.attribute.tsx")({ fg = gray_light }),
		sym("@operator.tsx")({ fg = gray }),
		sym("@string.tsx")({ fg = blue }),
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap