# duo-mini

![duo-mini screenshot](https://i.imgur.com/luyUDSM.png)

Two color, minimal colorscheme. Based heavily on this fork of [vim-colors-plain](https://github.com/NerdyPepper/vim-colors-plain)

## Installation

```vim
Plug 'seesleestak/duo-mini'

set termguicolors
colorscheme duo-mini
```

## Options & Usage

All colors are configurable. The defaults are based on the [nord colorscheme](https://www.nordtheme.com/) with some tweaks.

| Option                  | Description            |
| ----------------------- | ---------------------- |
| `g:duo_mini_bg`         | Background color       |
| `g:duo_mini_fg`         | Normal text color      |
| `g:duo_mini_primary`    | Accent color           |
| `g:duo_mini_subtle`     | Comment color          |
| `g:duo_mini_selection`  | Visual selection color |
| `g:duo_mini_red`        | Used for git, diff     |
| `g:duo_mini_yellow`     | Used for git, diff     |
| `g:duo_mini_green`      | Used for git, diff     |

For example, if you wanted to change the background color to something darker you could set the following in your `.vimrc`:

```vim
let g:duo_mini_bg = "#00000F"
```
