" Use just ; for commands.
nnoremap ; :

" Use :W and :Q for saving/closing.
nnoremap :W :w
nnoremap :Q :w

" Fast saving.
nmap <leader>s :w!<cr>

" Quickly edit/reload vimrc.
nmap <silent> <leader>ev :e$MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" CtrlP
noremap <leader>p :CtrlP<CR>

" NERDTree
noremap <leader>f :NERDTreeToggle<CR>

" NERDTree
noremap <leader>t :TagbarToggle<CR>

" Switching windows.
noremap <leader>w <C-w>p
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" jj to escape
inoremap jj <ESC>
