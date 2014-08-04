"https://github.com/mbrochh/vim-as-a-python-ide
"https://github.com/seebi/vimrc/blob/master/vimrc
"https://github.com/avelino/.vimrc.git
"https://github.com/davidhalter/jedi-vim

execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

" BASIC SETUP
"
" Unleash all VIM power
set nocompatible

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>

" color setup
set t_Co=256
colorscheme desert
set background=dark

" Showing line numbers and length
set number  " show line numbers
set tw=99   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

" remap leader key
let mapleader = ","

" Better modes.  Remeber where we are, support yankring
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" http://vimcasts.org/episodes/tabs-and-spaces/
" 4 spaces expanded and backspace deletes 4 spaces too
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" change swap and backup directory
" mkdir ~/tmp
set backupdir=~/tmp
set directory=~/tmp

set scrolloff=5    " Minimal number of screen lines to keep above and below the cursor

set showmode
set showcmd         " display incomplete commands

" command-line completion menu
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

set foldmethod=indent
set foldlevel=99

" no beep but visual bell
set visualbell
set cursorline      " Highlight the screen line of the cursor
set nocursorcolumn    " Highlight the screen column of the cursor
set ruler           " Show the line and column number of the cursor position
set laststatus=2    " = always

set encoding=utf-8

"{{{ Toggle dark/light background for solarized
function! ToggleSolarized()
    if &background == "dark"
        set background=light
        colorscheme desert
    else
        set background=dark
        colorscheme desert
    endif
endfunc
"}}}

" vimrc_on_the_fly from vimcasts
" autocmd bufwritepost .vimrc source $MYVIMRC


" CTRL KEY MAPPINGS
" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" LEADER KEY MAPPINGS
map <leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
nnoremap <leader>c ggO# -*- coding: utf-8 -*-<ESC>
" tab commands
nmap <leader>n :tabnext<CR>
nmap <leader>m :tabprevious<CR>
nmap <leader><Return> :tabnew<CR>
" fast quit
nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>
" fast save
nnoremap <leader>w :w<CR>
" fast edit vimrc file
nmap <leader>rc :tabedit $MYVIMRC<CR>

" FUNCTIONS KEYS MAPPINGS
"<F2> = pastetoggle
noremap <F3> :NERDTreeToggle<CR>
noremap <F4> :call ToggleSolarized()<CR>
noremap <F5> :ZoomWin<CR>
noremap <F8> :TagbarToggle<CR>

" Jedi Options
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

" NerdTreeTabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 40

