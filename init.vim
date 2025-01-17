set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

# restore last cursor position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
