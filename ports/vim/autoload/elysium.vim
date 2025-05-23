func! elysium#get_config()
	return {
		\ 'emphasis_style':  get(g:, 'elysium_emphasis_style', 'bold'),
		\ 'italic_comment':  get(g:, 'elysium_italic_comment', 1),
		\ 'colors_override': get(g:, 'elysium_colors_override', {}),
		\ }
endfunc

func! elysium#get_palette(colors_override)
	" (currently) unused colors are not included
	let palette = {
				\ 'bg0':       ['#ffffff', '255' ],
				\ 'bg1':       ['#f4f4f4', '254' ],
				\ 'bg2':       ['#ebebeb', '253' ],
				\ 'bg3':       ['#e4e4e4', '252' ],
				\ 'bg4':       ['#dfdfdf', '251' ],
				\ 'bg5':       ['#dcdcdc', '250' ],
				\ 'fg0':       ['#333333', '232' ],
				\ 'fg1':       ['#202020', '232' ],
				\ 'fg2':       ['#000000', '232' ],
				\ 'fg3':       ['#777777', '243' ],
				\ 'fg4':       ['#888888', '244' ],
				\ 'red':       ['#904961', '132' ],
				\ 'orange':    ['#934c3d', '131' ],
				\ 'yellow':    ['#b5803e', '179' ],
				\ 'green':     ['#427138', '22'  ],
				\ 'aqua':      ['#117555', '23'  ],
				\ 'blue':      ['#535d9c', '61'  ],
				\ 'purple':    ['#79508a', '97'  ],
				\ 'bg_red':    ['#e9dbdf', '182' ],
				\ 'bg_yellow': ['#f0e6d8', '223' ],
				\ 'bg_green':  ['#d9e3d7', '151' ],
				\ 'bg_blue':   ['#dddfeb', '189' ],
				\ 'bg_purple': ['#e4dce8', '183' ],
				\ 'none':      ['NONE',    'NONE'],
				\ }
	return extend(palette, a:colors_override)
endfunc

func! elysium#apply(group, fg, bg, ...)
	execute 'highlight' a:group
				\ 'guifg='   . a:fg[0]
				\ 'guibg='   . a:bg[0]
				\ 'ctermfg=' . a:fg[1]
				\ 'ctermbg=' . a:bg[1]
				\ 'gui='     . (a:0 >= 1 ? a:1    : 'NONE')
				\ 'cterm='   . (a:0 >= 1 ? a:1    : 'NONE')
				\ 'guisp='   . (a:0 >= 2 ? a:2[0] : 'NONE')
endfunc
