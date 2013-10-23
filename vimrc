"https://github.com/seebi/vimrc/blob/master/vimrc

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:user_emmet_mode='a'    "enable all function in all mode.

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

let mapleader = ","

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" http://vimcasts.org/episodes/tabs-and-spaces/
" 4 spaces expanded and backspace deletes 4 spaces too
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" do not keep a backup file
set nobackup

set scrolloff=5    " Minimal number of screen lines to keep above and below the cursor

set showmode
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set hlsearch        " switch on highlighting the last used search pattern.

" command-line completion menu
set wildmenu
set wildmode=list:longest,full

set visualbell      " no beep but visual bell
nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>

" faster saving
nnoremap <leader>w :w<CR>set visualbell      " no beep but visual bell
set cursorline      " Highlight the screen line of the cursor
set cursorcolumn      " Highlight the screen column of the cursor
set ttyfast         " Indicates a fast terminal connection.
set ruler           " Show the line and column number of the cursor position
set laststatus=2    " = always

" case-sensitive search intelligently
set ignorecase
set smartcase       " all lower -> insensitive, on upper case -> sensitive

" handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1

" Switch syntax highlighting on
syntax on

"{{{ Toggle dark/light background for solarized
nmap <leader>tb :call ToggleSolarized()<CR>
function! ToggleSolarized()
    if &background == "dark"
        set background=light
        colorscheme solarized
    else
        set background=dark
        colorscheme solarized
    endif
endfunc
"}}}

" vimrc_on_the_fly from vimcasts
autocmd bufwritepost .vimrc source $MYVIMRC
" edit vimrc on the fly
nmap <leader>rc :tabedit $MYVIMRC<CR>

" remap tab switch commands
nmap <leader>n :tabnext<CR>
nmap <leader>m :tabprevious<CR>
nmap <leader><Return> :tabnew<CR>

" faster exit
nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>

" faster saving
nnoremap <leader>w :w<CR>

set foldmethod=indent
set foldlevel=99
