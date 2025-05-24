# elysium.vim

Vim port of the Elysium colorscheme.

## installation

vim-plug:
```vim
Plug 'Apeiros-46B/elysium', { 'rtp': 'ports/vim' }
```

lazy.nvim:
```lua
{
    'Apeiros-46B/elysium',
    config = function(plugin) vim.opt.rtp:append(plugin.dir .. "/ports/vim") end
}
```

Nix:
```nix
pkgs.vimUtils.buildVimPlugin {
    name = "elysium.vim";
    src = pkgs.fetchFromGitHub {
        owner = "Apeiros-46B";
        repo = "elysium";
        rev = "...";
        sha256 = "...";
    };
    sourceRoot = "source/ports/vim";
}
```

## configuration

- `g:elysium_emphasis_style` - emphasis style in syntax highlighting
  - type: string
  - valid values: one of `'bold'`, `'italic'`, `'NONE'`
  - default: `'bold'`
- `g:elysium_italic_comment` - italicize comments?
  - type: boolean
  - default: `v:true`
- `g:elysium_colors_override` - override palette colors
  - type: dictionary
  - valid values: see `elysium#get_palette()` in `autoload/elysium.vim`
  - default: `{}`
- `g:elysium_256color` - when no truecolor, fall back to visually similar 256color, or specially configured (nonstandard) 256color?
  - type: boolean
  - default: `v:true`
