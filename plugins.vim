call plug#begin()

" Visual
Plug 'rougeth/papercolor-theme'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'luochen1990/rainbow'
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Interface and navigation
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'itchyny/lightline.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'

" Utility
" https://github.com/mileszs/ack.vim
" Find files
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim' "Search word inside folder
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'airblade/vim-gitgutter'

" Python
Plug 'hdima/python-syntax'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'justinj/vim-jsx'
Plug 'isruslan/vim-es6'
" Rust
Plug 'rust-lang/rust.vim'

" HTML
Plug 'mattn/emmet-vim'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'

" Programming
Plug 'vim-syntastic/syntastic'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Markdown
"Plug 'tpope/vim-markdown'

" Others
Plug 'junegunn/goyo.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/tagbar'

call plug#end()
