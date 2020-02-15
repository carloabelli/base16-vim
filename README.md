# base16-vim

[Base16](http://chriskempson.com/projects/base16) for [Vim](https://www.vim.org).

This theme is based off of [base16-vim](https://github.com/chriskempson/base16-vim) commit `6191622`.
For ways in which this theme intentionally differs see the differences section.

## Install

Use your preferred Vim plugin manager for installation.
If you do not have one, take a look at `:h packages`.

Add
```
colorscheme base16-XXX
```
to your `~/.vimrc`.

### Terminal emulators and truecolor support

If you are using Vim in a terminal emulator that supports [truecolor](https://gist.github.com/XVilka/8346728) you can optionally add
```
set termguicolors
```
to your `~/.vimrc`.

If your terminal emulator does not support truecolor, you will have to install the Base16 theme for your terminal emulator.

## Troubleshooting

If your line numbers are green, you most likely did not install the Base16 theme for your terminal emulator or are using a 256 variant.

## Customization

You can use the highlighting function
```
Base16hi(group, fg, bg, attr, sp)
```
and global variables
```
g:base00
...
g:base0F
```
for customization in your `~/.vimrc` e.g.
```
function! s:base16_customize()
  call Base16hi("MatchParen", g:base05, g:base03, "bold,italic", "")
endfunction

augroup colorscheme
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END
```

## Differences

### No support for 256 color terminal emulator themes

If bold fonts display in strange colors in your terminal emulator, search for an option to disable displaying bold fonts in bright colors (it should have one).

### Support for additional highlights

- LSP
