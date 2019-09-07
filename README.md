# duo-mini

![duo-mini screenshot](https://i.imgur.com/luyUDSM.png)

Two color, minimal colorscheme. Based heavily on this fork of [vim-colors-plain](https://github.com/NerdyPepper/vim-colors-plain)

## Installation

```
Plug 'seesleestak/duo-mini'
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
| `g:duo_mini_red`        |                        |
| `g:duo_mini_yellow`     |                        |
| `g:duo_mini_green`      |                        |

For example, if you wanted to change the background color to something darker you could set the following in your `.vimrc`:

```
let g:duo_mini_bg = "#00000F"
```
