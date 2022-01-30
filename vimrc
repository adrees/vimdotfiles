"
" Adam's VIMRC
"

syntax on

set fileformat=unix
set encoding=UTF-8

" For Python files 
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<
set cursorline
set number
" set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
set noshowmode
" set conceallevel=1
set noerrorbells visualbell t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed
set history=700

set ignorecase
set smartcase
set incsearch
set hlsearch
" "nnoremap <CR> :noh<CR><CR>:<backspace>
set lazyredraw
" regex
set magic

""""""""""""""""""""""""""""""""""""""""""""""
" Mappings

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

noremap <esc> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

" get rid of the dam lowercase issue in visual mode
vmap <esc> <c-c>
map <F5> :setlocal spell! spelllang=en_gb<CR>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


so ~/.vim/plugins.vim

" Style and font tweaks
colorscheme nord
set guifont=Menlo:h16

" Tweak all the plugins here
so ~/.vim/plugin-config.vim
