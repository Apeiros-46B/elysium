WIP

# elysium
neutral, muted light theme.

# ports
- [base16](https://github.com/Apeiros-46B/elysium/tree/main/ports/base16)

# design philosophy
1. Background and foreground tones should be neutral. It should be up to the user to alter temperature through a global program like [redshift](https://github.com/jonls/redshift).
2. The other colors should be around the same luminance (oklch) as each other and be slightly muted. They should be desaturated, but have just the right amount of contrast where they're still distinguishable from each other and easy to read from the background tones.

# palette
Foreground and background shades are still temporary at this point and you can basically just replace them with any neutral gray tones if you prefer.

| name |   hex   |        oklch        |                              meaning                              |
|------|---------|---------------------|-------------------------------------------------------------------|
|bg0   |`#ffffff`|...                  |primary background                                                 |
|bg1   |`#f4f4f4`|...                  |secondary background, current line, unfocused statusline           |
|bg2   |`#ebebeb`|...                  |tertiary background, focused statusline                            |
|bg3   |`#e4e4e4`|...                  |darker background                                                  |
|bg4   |`#dfdfdf`|...                  |darker background                                                  |
|fg0   |`#333333`|...                  |primary foreground                                                 |
|fg1   |`#202020`|...                  |strong foreground                                                  |
|fg2   |`#000000`|...                  |strong foreground                                                  |
|fg3   |`#777777`|...                  |weak foreground, comments, statusline text                         |
|fg4   |`#888888`|...                  |faded foreground, unimportant information                          |
|red   |`#904961`|`oklch(50% 0.1 0)`   |errors, namespaces, fields, diff deleted                           |
|orange|`#934c3d`|`oklch(50% 0.1 33)`  |warnings, operators                                                |
|yellow|`#b5803e`|`oklch(64% 0.105 70)`|type names (structs, enums, classes, interfaces, traits)           |
|green |`#427138`|`oklch(50% 0.1 140)` |hints, functions/methods, escape sequences, diff inserted          |
|aqua  |`#117555`|`oklch(50% 0.1 165)` |info, string literals, character literals                          |
|blue  |`#535d9c`|`oklch(50% 0.1 275)` |keywords, diff modified                                            |
|purple|`#79508a`|`oklch(50% 0.1 315)` |numeric literals, boolean literals, macros, preprocessor directives|

# FAQ
- Q: Dark mode?  
  A: This is not planned, but if you like elysium, you may like [Paradise](https://github.com/paradise-theme/paradise) and [Mountain](https://github.com/mountain-theme/Mountain).
