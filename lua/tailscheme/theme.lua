
local c = require('tailscheme.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- highlights
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "SignColumn", { fg = 'NONE', bg = c.bg })
  hl(0, "MsgArea", { fg = c.fg, bg = c.dark })
  hl(0, "ModeMsg", { fg = c.fg, bg = c.bg })
  hl(0, "MsgSeparator", { fg = c.fg, bg = c.bg })
  hl(0, "SpellBad", { fg = c.light_red, bg = 'NONE', underline=true, })
  hl(0, "SpellCap", { fg = c.yellow, bg = 'NONE', underline=true, })
  hl(0, "SpellLocal", { fg = c.green, bg = 'NONE', underline=true, })
  hl(0, "SpellRare", { fg = c.purple, bg = 'NONE', underline=true, })
  hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
  hl(0, "Pmenu", { fg = c.gray_light, bg = c.dark, sp = 'NONE', blend=50,  })
  hl(0, "PmenuSel", { fg = c.bg, bg = c.blue })
  hl(0, "WildMenu", { fg = c.bg, bg = c.blue })
  hl(0, "CursorLineNr", { fg = c.gray_light, bg = 'NONE' })
  hl(0, "Comment", { fg = c.comment, bg = 'NONE', italic=true, })
  hl(0, "Folded", { fg = c.gray, bg = c.bg })
  hl(0, "FoldColumn", { fg = c.dark, bg = c.bg })
  hl(0, "LineNr", { fg = c.gray, bg = 'NONE' })
  hl(0, "FloatBoder", { fg = c.gray, bg = c.dark })
  hl(0, "Whitespace", { fg = c.bg, bg = 'NONE' })
  hl(0, "VertSplit", { fg = c.gray, bg = c.bg })
  hl(0, "CursorLine", { fg = 'NONE', bg = c.dark })
  hl(0, "CursorColumn", { fg = 'NONE', bg = c.dark })
  hl(0, "ColorColumn", { fg = 'NONE', bg = c.bg })
  hl(0, "NormalFloat", { fg = 'NONE', bg = c.dark })
  hl(0, "Visual", { fg = c.dark, bg = c.blue })
  hl(0, "VisualNOS", { fg = 'NONE', bg = c.dark })
  hl(0, "WarningMsg", { fg = c.error_red, bg = c.bg })
  hl(0, "DiffAdd", { fg = c.bg, bg = c.sign_add })
  hl(0, "DiffChange", { fg = c.bg, bg = c.sign_change, underline=true, })
  hl(0, "DiffDelete", { fg = c.bg, bg = c.sign_delete })
  hl(0, "QuickFixLine", { fg = 'NONE', bg = c.blue })
  hl(0, "PmenuSbar", { fg = 'NONE', bg = c.dark })
  hl(0, "PmenuThumb", { fg = 'NONE', bg = c.gray })
  hl(0, "MatchWord", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "MatchParen", { fg = c.hint_blue, bg = c.bg, underline=true, })
  hl(0, "MatchWordCur", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "MatchParenCur", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "Cursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "lCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "CursorIM", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "TermCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "Conceal", { fg = c.gray, bg = 'NONE' })
  hl(0, "Directory", { fg = c.blue, bg = 'NONE' })
  hl(0, "SpecialKey", { fg = c.blue, bg = 'NONE', bold=true, })
  hl(0, "Title", { fg = c.blue, bg = 'NONE', bold=true, })
  hl(0, "ErrorMsg", { fg = c.error_red, bg = c.bg, bold=true, })
  hl(0, "Search", { fg = c.dark, bg = c.green })
  hl(0, "IncSearch", { fg = c.dark, bg = c.green })
  hl(0, "Substitute", { fg = c.dark, bg = c.blue })
  hl(0, "MoreMsg", { fg = c.green, bg = 'NONE' })
  hl(0, "Question", { fg = c.orange, bg = 'NONE' })
  hl(0, "EndOfBuffer", { fg = c.bg, bg = 'NONE' })
  hl(0, "NonText", { fg = c.bg, bg = 'NONE' })
  hl(0, "Variable", { fg = c.blue, bg = 'NONE' })
  hl(0, "String", { fg = c.white, bg = 'NONE' })
  hl(0, "Character", { fg = c.white, bg = 'NONE' })
  hl(0, "Constant", { fg = c.blue, bg = 'NONE' })
  hl(0, "Number", { fg = c.white, bg = 'NONE' })
  hl(0, "Boolean", { fg = c.blue, bg = 'NONE' })
  hl(0, "Float", { fg = c.white, bg = 'NONE' })
  hl(0, "Identifier", { fg = c.white, bg = 'NONE' })
  hl(0, "Function", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Operator", { fg = c.gray, bg = 'NONE' })
  hl(0, "Type", { fg = c.cyan, bg = 'NONE' })
  hl(0, "StorageClass", { fg = c.blue, bg = 'NONE' })
  hl(0, "Structure", { fg = c.blue, bg = 'NONE' })
  hl(0, "Typedef", { fg = c.blue, bg = 'NONE' })
  hl(0, "Keyword", { fg = c.gray, bg = 'NONE' })
  hl(0, "Statement", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Conditional", { fg = c.blue, bg = 'NONE' })
  hl(0, "Repeat", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Label", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Exception", { fg = c.purple, bg = 'NONE' })
  hl(0, "Include", { fg = c.magenta, bg = 'NONE' })
  hl(0, "PreProc", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Define", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Macro", { fg = c.magenta, bg = 'NONE' })
  hl(0, "PreCondit", { fg = c.magenta, bg = 'NONE' })
  hl(0, "Special", { fg = c.blue, bg = 'NONE' })
  hl(0, "SpecialChar", { fg = c.white, bg = 'NONE' })
  hl(0, "Tag", { fg = c.blue, bg = 'NONE' })
  hl(0, "Debug", { fg = c.red, bg = 'NONE' })
  hl(0, "Delimiter", { fg = c.gray, bg = 'NONE' })
  hl(0, "SpecialComment", { fg = c.comment, bg = 'NONE' })
  hl(0, "Underlined", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "Bold", { fg = 'NONE', bg = 'NONE', bold=true, })
  hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "Ignore", { fg = c.cyan, bg = c.bg, bold=true, })
  hl(0, "Todo", { fg = c.green, bg = c.dark, bold=true, })
  hl(0, "Error", { fg = c.error_red, bg = c.dark, bold=true, })
  hl(0, "TabLine", { fg = c.gray_light, bg = c.gray_light })
  hl(0, "TabLineSel", { fg = c.white, bg = c.gray_light })
  hl(0, "TabLineFill", { fg = c.gray_light, bg = c.gray_light })

  -- Treesitter
  hl(0, "TSComment", { link = 'Comment' })
  hl(0, "TSAnnotation", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSAttribute", { fg = c.cyan, bg = 'NONE' })
  hl(0, "TSConstructor", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSType", { fg = c.cyan, bg = 'NONE' })
  hl(0, "TSTypeBuiltin", { fg = c.white, bg = 'NONE' })
  hl(0, "TSConditional", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSException", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSInclude", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSKeywordReturn", { fg = c.gray_light, bg = 'NONE' })
  hl(0, "TSKeyword", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSKeywordFunction", { fg = c.gray_light, bg = 'NONE' })
  hl(0, "TSLabel", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSNamespace", { fg = c.cyan, bg = 'NONE' })
  hl(0, "TSRepeat", { fg = c.yellow, bg = 'NONE' })
  hl(0, "TSConstant", { fg = c.white, bg = 'NONE' })
  hl(0, "TSConstBuiltin", { fg = c.white, bg = 'NONE' })
  hl(0, "TSFloat", { fg = c.white, bg = 'NONE' })
  hl(0, "TSNumber", { fg = c.white, bg = 'NONE' })
  hl(0, "TSBoolean", { fg = c.white, bg = 'NONE' })
  hl(0, "TSCharacter", { fg = c.white, bg = 'NONE' })
  hl(0, "TSError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "TSFunction", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSFuncBuiltin", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSMethod", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSConstMacro", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSFuncMacro", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSVariable", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSVariableBuiltin", { fg = c.white, bg = 'NONE' })
  hl(0, "TSProperty", { fg = c.white, bg = 'NONE' })
  hl(0, "TSField", { fg = c.fg, bg = 'NONE' })
  hl(0, "TSParameter", { fg = c.white, bg = 'NONE' })
  hl(0, "TSParameterReference", { fg = c.purple, bg = 'NONE' })
  hl(0, "TSSymbol", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSText", { fg = c.fg, bg = 'NONE' })
  hl(0, "TSOperator", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSPunctDelimiter", { fg = c.fg, bg = 'NONE' })
  hl(0, "TSTagDelimiter", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSTagAttribute", { fg = c.gray_light, bg = 'NONE' })
  hl(0, "TSPunctBracket", { fg = c.gray, bg = 'NONE' })
  hl(0, "TSPunctSpecial", { fg = c.purple, bg = 'NONE' })
  hl(0, "TSString", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSStringRegex", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSStringEscape", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSTag", { fg = c.magenta, bg = 'NONE' })
  hl(0, "TSEmphasis", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "TSUnderline", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "TSTitle", { fg = c.fg, bg = 'NONE',  })
  hl(0, "TSLiteral", { fg = c.white, bg = 'NONE' })
  hl(0, "TSURI", { fg = c.blue, bg = 'NONE', underline=true, })
  hl(0, "TSKeywordOperator", { fg = c.purple, bg = 'NONE' })
  hl(0, "TSStructure", { fg = c.blue, bg = 'NONE' })
  hl(0, "TSStrong", { fg = c.blue, bg = 'NONE', bold=true, })
  hl(0, "TSQueryLinterError", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "TreesitterContext", { fg = 'NONE', bg = c.gray_light })

  -- Git
  hl(0, "SignAdd", { fg = c.sign_add, bg = 'NONE' })
  hl(0, "SignChange", { fg = c.sign_change, bg = 'NONE' })
  hl(0, "SignDelete", { fg = c.sign_delete, bg = 'NONE' })
  hl(0, "GitSignsAdd", { fg = c.sign_add, bg = 'NONE' })
  hl(0, "GitSignsChange", { fg = c.sign_change, bg = 'NONE' })
  hl(0, "GitSignsDelete", { fg = c.sign_delete, bg = 'NONE' })

  -- LSP
  hl(0, "LspDiagnosticsDefaultError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "LspDiagnosticsDefaultWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "LspDiagnosticsDefaultInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsDefaultInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsDefaultHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "LspDiagnosticsVirtualTextError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "LspDiagnosticsVirtualTextWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "LspDiagnosticsVirtualTextInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsVirtualTextInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsVirtualTextHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "LspDiagnosticsFloatingError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "LspDiagnosticsFloatingWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "LspDiagnosticsFloatingInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsFloatingInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsFloatingHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "DiagnosticSignError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "DiagnosticSignWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "DiagnosticSignInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "DiagnosticSignInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "DiagnosticSignHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "LspDiagnosticsSignError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "LspDiagnosticsSignWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "LspDiagnosticsSignInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsSignInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsSignHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "LspDiagnosticsError", { fg = c.error_red, bg = 'NONE' })
  hl(0, "LspDiagnosticsWarning", { fg = c.warning_orange, bg = 'NONE' })
  hl(0, "LspDiagnosticsInformation", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsInfo", { fg = c.info_yellow, bg = 'NONE' })
  hl(0, "LspDiagnosticsHint", { fg = c.hint_blue, bg = 'NONE' })
  hl(0, "LspDiagnosticsUnderlineError", { fg = c.error_red, bg = 'NONE', underline=true, })
  hl(0, "LspDiagnosticsUnderlineWarning", { fg = c.warning_orange, bg = 'NONE', underline=true, })
  hl(0, "LspDiagnosticsUnderlineInformation", { fg = c.info_yellow, bg = 'NONE', underline=true, })
  hl(0, "LspDiagnosticsUnderlineInfo", { fg = c.info_yellow, bg = 'NONE', underline=true, })
  hl(0, "LspDiagnosticsUnderlineHint", { fg = c.hint_blue, bg = 'NONE', underline=true, })
  hl(0, "LspReferenceRead", { fg = 'NONE', bg = c.blue_bg })
  hl(0, "LspReferenceText", { fg = 'NONE', bg = c.blue_bg })
  hl(0, "LspReferenceWrite", { fg = 'NONE', bg = c.blue_bg })
  hl(0, "LspCodeLens", { fg = c.comment, bg = 'NONE', italic=true, })
  hl(0, "LspCodeLensSeparator", { fg = c.white, bg = 'NONE', italic=true, })

  -- StatusLine
  hl(0, "StatusLine", { fg = c.gray_light, bg = c.dark })
  hl(0, "StatusLineNC", { fg = c.gray, bg = c.dark })
  hl(0, "StatusLineSeparator", { fg = c.bg, bg = 'NONE' })
  hl(0, "StatusLineTerm", { fg = c.gray, bg = 'NONE' })
  hl(0, "StatusLineTermNC", { fg = c.gray, bg = 'NONE' })

  -- IndentBlankline
  hl(0, "IndentBlanklineContextChar", { fg = c.magenta, bg = 'NONE' })

  -- Telescope
  hl(0, "TelescopeSelection", { fg = c.dark, bg = c.blue })
  hl(0, "TelescopeMatching", { fg = c.white, bg = 'NONE' })
  hl(0, "TelescopeBorder", { fg = c.blue, bg = c.bg })

  -- Illuminate
  hl(0, "illuminateCurWord", { link = 'IncSearch' })
  hl(0, "illuminateWord", { link = 'IncSearch' })
end

return theme
