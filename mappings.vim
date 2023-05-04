" -----------------------------------------------------------------------------
" => Keys mapping
" -----------------------------------------------------------------------------

" Changing <ESC>
imap jj <esc>

" Improve up/down movement on wrapped lines (vimbits)
nnoremap j gj
nnoremap k gk

" Jump to the top and bottom line using K and J
noremap J L
noremap K H

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Easier split navigations with Ctrl-(h, j, k, l)
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" F10 cleans up the search history
map <f10> :let @/ = ""<cr>

" Select all text in current buffer
map <Leader>a ggVG

" Use system clipboard with C-y and C-p
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

nnoremap <leader>f :Ag<CR>
nnoremap <C-m>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" See current file in nerdtree
nnoremap <C-n> :NERDTreeFind<CR>
" Tab navigation
nnoremap <leader>. :tabn<CR>
nnoremap <leader>, :tabp<CR>
nnoremap <leader>n :Te<CR>
" Close Tab
nnoremap <leader>w <C-W>c<CR>
" Split vertically and horizontally
nnoremap <leader>v <C-w>v<CR>
nnoremap <leader>s <C-w>s<CR>

nnoremap <leader>z <C-w><S-<><CR>

nnoremap D    :resize -5<CR>
nnoremap S  :resize +5<CR>
nnoremap A  :vertical resize -5<CR>
nnoremap F :vertical resize +5<CR>


nnoremap <silent> K :call CocAction('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

map <C-G> :Goyo<CR>
nmap <C-T> :TagbarToggle<CR>
nnoremap <silent> <C-f> :Files<CR>
