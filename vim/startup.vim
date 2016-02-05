autocmd VimEnter * if !argc() | Startify | NERDTree | endif
autocmd VimEnter * if argc() | NERDTree | wincmd p | endif
