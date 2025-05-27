let s:config = elysium#get_config()
let s:palette = elysium#get_palette(s:config.colors_override, s:config.eightbit)

let s:emph = s:config.emphasis_style
if s:emph !=# 'bold' && s:emph !=# 'italic'
	let s:emph = 'NONE'
endif
let s:comment_italic = s:config.italic_comment ? 'italic' : 'NONE'

hi clear
if exists('syntax_on')
	syn reset
endif

let g:colors_name = 'elysium'

" no truecolor support but also isn't 256color so we can't use fallbacks
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
	finish
endif

call elysium#apply('Fg', s:palette.fg0, s:palette.none)
call elysium#apply('FgStrong', s:palette.fg1, s:palette.none)
call elysium#apply('Red', s:palette.red, s:palette.none)
call elysium#apply('Orange', s:palette.orange, s:palette.none)
call elysium#apply('Yellow', s:palette.yellow, s:palette.none)
call elysium#apply('Green', s:palette.green, s:palette.none)
call elysium#apply('Aqua', s:palette.aqua, s:palette.none)
call elysium#apply('Blue', s:palette.blue, s:palette.none)
call elysium#apply('Purple', s:palette.purple, s:palette.none)
call elysium#apply('FgEmph', s:palette.fg2, s:palette.none, s:emph)
call elysium#apply('RedEmph', s:palette.red, s:palette.none, s:emph)
call elysium#apply('OrangeEmph', s:palette.orange, s:palette.none, s:emph)
call elysium#apply('YellowEmph', s:palette.yellow, s:palette.none, s:emph)
call elysium#apply('GreenEmph', s:palette.green, s:palette.none, s:emph)
call elysium#apply('AquaEmph', s:palette.aqua, s:palette.none, s:emph)
call elysium#apply('BlueEmph', s:palette.blue, s:palette.none, s:emph)
call elysium#apply('PurpleEmph', s:palette.purple, s:palette.none, s:emph)
call elysium#apply('FgDim', s:palette.fg3, s:palette.none)

call elysium#apply('Normal', s:palette.fg0, s:palette.bg0)
call elysium#apply('NormalNC', s:palette.fg0, s:palette.bg0)
call elysium#apply('Terminal', s:palette.fg0, s:palette.bg0)
call elysium#apply('EndOfBuffer', s:palette.bg3, s:palette.none)
call elysium#apply('Folded', s:palette.fg3, s:palette.bg1)
call elysium#apply('FoldColumn', s:palette.bg5, s:palette.none)
call elysium#apply('SignColumn', s:palette.fg0, s:palette.none)
call elysium#apply('ToolbarLine', s:palette.fg0, s:palette.bg2)
call elysium#apply('IncSearch', s:palette.bg0, s:palette.aqua)
call elysium#apply('Search', s:palette.aqua, s:palette.bg_aqua)
call elysium#apply('Conceal', s:palette.fg3, s:palette.none)
call elysium#apply('Cursor', s:palette.none, s:palette.none, 'reverse')
call elysium#apply('CursorLine', s:palette.none, s:palette.bg_cursor)
call elysium#apply('CursorColumn', s:palette.none, s:palette.bg_cursor)
call elysium#apply('LineNr', s:palette.bg5, s:palette.none)
call elysium#apply('CursorLineNr', s:palette.fg3, s:palette.bg_cursor)
call elysium#apply('CursorLineSign', s:palette.none, s:palette.bg_cursor)
call elysium#apply('DiffAdd', s:palette.green, s:palette.bg_green)
call elysium#apply('DiffDelete', s:palette.red, s:palette.bg_red)
call elysium#apply('DiffChange', s:palette.blue, s:palette.bg_blue)
call elysium#apply('DiffText', s:palette.blue, s:palette.bg0, 'bold')
call elysium#apply('Directory', s:palette.blue, s:palette.none)
call elysium#apply('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call elysium#apply('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call elysium#apply('ModeMsg', s:palette.fg0, s:palette.none, 'bold')
call elysium#apply('MoreMsg', s:palette.yellow, s:palette.none, 'bold')
call elysium#apply('MatchParen', s:palette.none, s:palette.bg4)
call elysium#apply('NonText', s:palette.bg5, s:palette.none)
call elysium#apply('SpecialKey', s:palette.bg5, s:palette.none)
call elysium#apply('Pmenu', s:palette.fg0, s:palette.bg1)
call elysium#apply('PmenuSbar', s:palette.none, s:palette.bg2)
call elysium#apply('PmenuSel', s:palette.fg0, s:palette.bg_blue)
call elysium#apply('PmenuKind', s:palette.green, s:palette.bg1)
call elysium#apply('PmenuExtra', s:palette.fg3, s:palette.bg1)
call elysium#apply('PmenuThumb', s:palette.none, s:palette.bg5)
call elysium#apply('NormalFloat', s:palette.fg0, s:palette.bg1)
call elysium#apply('FloatBorder', s:palette.fg3, s:palette.bg1)
call elysium#apply('FloatTitle', s:palette.green, s:palette.bg1, 'bold')
call elysium#apply('Question', s:palette.yellow, s:palette.none)
call elysium#apply('SpellBad', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call elysium#apply('SpellCap', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call elysium#apply('SpellLocal', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
call elysium#apply('SpellRare', s:palette.none, s:palette.none, 'undercurl', s:palette.purple)
call elysium#apply('StatusLine', s:palette.fg3, s:palette.bg2)
call elysium#apply('StatusLineTerm', s:palette.fg3, s:palette.bg2)
call elysium#apply('StatusLineNC', s:palette.fg3, s:palette.bg1)
call elysium#apply('StatusLineTermNC', s:palette.fg3, s:palette.bg1)
call elysium#apply('TabLine', s:palette.fg3, s:palette.bg3)
call elysium#apply('TabLineFill', s:palette.fg3, s:palette.bg1)
call elysium#apply('TabLineSel', s:palette.fg0, s:palette.bg_blue)
call elysium#apply('VertSplit', s:palette.bg0, s:palette.bg0)
call elysium#apply('Visual', s:palette.none, s:palette.bg_purple)
call elysium#apply('VisualNOS', s:palette.none, s:palette.bg_purple)
call elysium#apply('QuickFixLine', s:palette.purple, s:palette.none, 'bold')
call elysium#apply('Debug', s:palette.orange, s:palette.none)
call elysium#apply('ToolbarButton', s:palette.bg0, s:palette.green)
call elysium#apply('qfFileName', s:palette.fg3, s:palette.none)
call elysium#apply('qfLineNr', s:palette.fg0, s:palette.none)
hi! link CurSearch IncSearch
hi! link WildMenu PmenuSel
hi! link WinSeparator VertSplit

if has('nvim')
	call elysium#apply('WinBar', s:palette.fg3, s:palette.bg2)
	call elysium#apply('WinBarNC', s:palette.fg3, s:palette.bg1)
	call elysium#apply('Whitespace', s:palette.bg4, s:palette.none)
	call elysium#apply('Substitute', s:palette.bg4, s:palette.none)
	hi! link DiagnosticError Red
	hi! link DiagnosticWarn Yellow
	hi! link DiagnosticInfo Aqua
	hi! link DiagnosticHint Blue
	hi! link DiagnosticUnderlineError ErrorText
	hi! link DiagnosticUnderlineWarn WarningText
	hi! link DiagnosticUnderlineInfo InfoText
	hi! link DiagnosticUnderlineHint HintText
	hi! link DiagnosticFloatingError ErrorFloat
	hi! link DiagnosticFloatingWarn WarningFloat
	hi! link DiagnosticFloatingInfo InfoFloat
	hi! link DiagnosticFloatingHint HintFloat
	hi! link DiagnosticVirtualTextError VirtualTextError
	hi! link DiagnosticVirtualTextWarn VirtualTextWarning
	hi! link DiagnosticVirtualTextInfo VirtualTextInfo
	hi! link DiagnosticVirtualTextHint VirtualTextHint
	hi! link DiagnosticSignError DiagnosticError
	hi! link DiagnosticSignWarn DiagnosticWarn
	hi! link DiagnosticSignInfo DiagnosticInfo
	hi! link DiagnosticSignHint DiagnosticHint
	hi! link LspDiagnosticsFloatingError DiagnosticFloatingError
	hi! link LspDiagnosticsFloatingWarning DiagnosticFloatingWarn
	hi! link LspDiagnosticsFloatingInformation DiagnosticFloatingInfo
	hi! link LspDiagnosticsFloatingHint DiagnosticFloatingHint
	hi! link LspDiagnosticsDefaultError DiagnosticError
	hi! link LspDiagnosticsDefaultWarning DiagnosticWarn
	hi! link LspDiagnosticsDefaultInformation DiagnosticInfo
	hi! link LspDiagnosticsDefaultHint DiagnosticHint
	hi! link LspDiagnosticsVirtualTextError DiagnosticVirtualTextError
	hi! link LspDiagnosticsVirtualTextWarning DiagnosticVirtualTextWarn
	hi! link LspDiagnosticsVirtualTextInformation DiagnosticVirtualTextInfo
	hi! link LspDiagnosticsVirtualTextHint DiagnosticVirtualTextHint
	hi! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
	hi! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
	hi! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
	hi! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
	hi! link LspDiagnosticsSignError DiagnosticSignError
	hi! link LspDiagnosticsSignWarning DiagnosticSignWarn
	hi! link LspDiagnosticsSignInformation DiagnosticSignInfo
	hi! link LspDiagnosticsSignHint DiagnosticSignHint
	hi! link LspReferenceText CurrentWord
	hi! link LspReferenceRead CurrentWord
	hi! link LspReferenceWrite CurrentWord
	hi! link LspInlayHint InlayHints
	hi! link LspCodeLens VirtualTextInfo
	hi! link LspCodeLensSeparator VirtualTextHint
	hi! link LspSignatureActiveParameter Search
	hi! link TermCursor Cursor
	hi! link healthError Red
	hi! link healthSuccess Green
	hi! link healthWarning Orange
endif

call elysium#apply('Underlined', s:palette.none, s:palette.none, 'underline')
call elysium#apply('Ignore', s:palette.bg5, s:palette.none)
call elysium#apply('Delimiter', s:palette.fg0, s:palette.none)
call elysium#apply('Comment', s:palette.fg3, s:palette.none, s:comment_italic)
call elysium#apply('SpecialComment', s:palette.red, s:palette.none, s:comment_italic)
call elysium#apply('Todo', s:palette.green, s:palette.none, s:comment_italic)
hi! link Boolean PurpleEmph
hi! link Number Purple
hi! link Float Purple
hi! link PreProc Purple
hi! link PreCondit Purple
hi! link Include Purple
hi! link Define Purple
hi! link Conditional BlueEmph
hi! link Repeat BlueEmph
hi! link Keyword BlueEmph
hi! link Typedef BlueEmph
hi! link Exception BlueEmph
hi! link Statement BlueEmph
hi! link Error RedEmph
hi! link StorageClass OrangeEmph
hi! link Tag Orange
hi! link Label Orange
hi! link Structure Orange
hi! link Operator Orange
hi! link Title GreenEmph
hi! link Special Yellow
hi! link SpecialChar Yellow
hi! link Type Yellow
hi! link Function Green
hi! link String Aqua
hi! link Character Aqua
hi! link Constant Purple
hi! link Macro Purple
hi! link Identifier Red
hi! link Added Green
hi! link Removed Red
hi! link Changed Blue

call elysium#apply('ErrorText', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call elysium#apply('WarningText', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call elysium#apply('InfoText', s:palette.none, s:palette.none, 'undercurl', s:palette.aqua)
call elysium#apply('HintText', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
hi! link ErrorFloat Red
hi! link WarningFloat Yellow
hi! link InfoFloat Aqua
hi! link HintFloat Blue
hi clear ErrorLine
hi clear WarningLine
hi clear InfoLine
hi clear HintLine

call elysium#apply('CurrentWord', s:palette.none, s:palette.bg2)
call elysium#apply('InlayHints', s:palette.fg3, s:palette.none)

if (has('termguicolors') && &termguicolors) || has('gui_running')
	if has('nvim')
    let g:terminal_color_0 = s:palette.bg0[0]
    let g:terminal_color_1 = s:palette.red[0]
    let g:terminal_color_2 = s:palette.green[0]
    let g:terminal_color_3 = s:palette.yellow[0]
    let g:terminal_color_4 = s:palette.blue[0]
    let g:terminal_color_5 = s:palette.purple[0]
    let g:terminal_color_6 = s:palette.aqua[0]
    let g:terminal_color_7 = s:palette.fg3[0]
    let g:terminal_color_8 = s:palette.bg2[0]
    let g:terminal_color_9 = s:palette.red[0]
    let g:terminal_color_10 = s:palette.green[0]
    let g:terminal_color_11 = s:palette.yellow[0]
    let g:terminal_color_12 = s:palette.blue[0]
    let g:terminal_color_13 = s:palette.purple[0]
    let g:terminal_color_14 = s:palette.aqua[0]
    let g:terminal_color_15 = s:palette.fg0[0]
	else
		let g:terminal_ansi_colors = [
			\ s:palette.bg0[0], s:palette.red[0], s:palette.green[0], s:palette.yellow[0], s:palette.blue[0], s:palette.purple[0], s:palette.aqua[0], s:palette.fg3[0],
			\ s:palette.bg2[0], s:palette.red[0], s:palette.green[0], s:palette.yellow[0], s:palette.blue[0], s:palette.purple[0], s:palette.aqua[0], s:palette.fg0[0],
			\ ]
	endif
endif

if has('nvim')
	hi! link @variable FgStrong
	hi! link @variable.builtin Purple
	hi! link @variable.parameter FgStrong
	hi! link @variable.parameter.builtin Yellow
	hi! link @variable.member Red

	hi! link @constant Purple
	hi! link @constant.builtin PurpleEmph
	hi! link @constant.macro PurpleEmph

	hi! link @module Red
	hi! link @module.builtin Red
	hi! link @label Orange

	hi! link @string Aqua
	hi! link @string.documentation Aqua
	hi! link @string.regexp Yellow
	hi! link @string.escape YellowEmph
	hi! link @string.special Yellow
	hi! link @string.special.symbol Yellow
	call elysium#apply('@string.special.path', s:palette.purple, s:palette.none, 'underline')
	call elysium#apply('@string.special.url', s:palette.purple, s:palette.none, 'underline')

	hi! link @character Aqua
	hi! link @character.special YellowEmph

	hi! link @boolean PurpleEmph
	hi! link @number Purple
	hi! link @number.float Purple

	hi! link @type Yellow
	hi! link @type.builtin YellowEmph
	hi! link @type.definition Yellow

	hi! link @attribute Purple
	hi! link @attribute.builtin Purple
	hi! link @property Red

	hi! link @function Green
	hi! link @function.builtin Green
	hi! link @function.call Green
	hi! link @function.macro Green
	hi! link @function.method Green
	hi! link @function.method.call Green
	hi! link @constructor Green

	hi! link @operator Orange
	hi! link @keyword BlueEmph
	hi! link @keyword.coroutine BlueEmph
	hi! link @keyword.function BlueEmph
	hi! link @keyword.operator OrangeEmph
	hi! link @keyword.import BlueEmph
	hi! link @keyword.type BlueEmph
	hi! link @keyword.modifier OrangeEmph
	hi! link @keyword.repeat BlueEmph
	hi! link @keyword.return BlueEmph
	hi! link @keyword.debug BlueEmph
	hi! link @keyword.exception BlueEmph
	hi! link @keyword.conditional BlueEmph
	hi! link @keyword.conditional.ternary Orange
	hi! link @keyword.directive Purple
	hi! link @keyword.directive.define Purple

	hi! link @punctuation.delimiter Fg
	hi! link @punctuation.bracket Fg
	hi! link @punctuation.special Fg

	hi! link @comment Comment
	hi! link @comment.documentation Comment
	hi! link @comment.error RedEmph
	hi! link @comment.warning YellowEmph
	hi! link @comment.todo GreenEmph
	hi! link @comment.note AquaEmph

	hi! link @markup.heading GreenEmph
	hi! link @markup.heading.1 GreenEmph
	hi! link @markup.heading.2 AquaEmph
	hi! link @markup.heading.3 BlueEmph
	hi! link @markup.heading.4 PurpleEmph
	hi! link @markup.heading.5 RedEmph
	hi! link @markup.heading.6 FgEmph

	hi! link @markup.quote Green
	hi! link @markup.math Blue

	call elysium#apply('@markup.link', s:palette.purple, s:palette.none, 'underline')
	call elysium#apply('@markup.link.url', s:palette.purple, s:palette.none, 'underline')
	call elysium#apply('@markup.link.label', s:palette.fg2, s:palette.none, 'underline')

	hi! link @markup.raw Blue
	hi! link @markup.raw.block Blue
	hi! link @markup.list Orange
	hi! link @markup.list.checked Blue
	hi! link @markup.list.unchecked FgDim

	hi! link @diff.plus DiffAdd
	hi! link @diff.minus DiffDelete
	hi! link @diff.delta DiffChange

	hi! link @tag Blue
	hi! link @tag.builtin BlueEmph
	hi! link @tag.attribute Red
	hi! link @tag.delimiter FgDim

	hi! link @variable.member.nix FgStrong
	hi! link @keyword.modifier.java BlueEmph
endif
