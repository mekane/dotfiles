" Enable filetype plugins
filetype plugin on
"filetype indent on

"Show status line (2=always)
set laststatus=2

set statusline=%t\      "tail of the filename
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%=      "left/right separator
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %5.c  "cursor column
set statusline+=\ \ 

"No stupid auto-adding extra comment lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set to auto read when a file is changed from the outside
set autoread

" Seach Options
set ignorecase
set smartcase
set hlsearch "Highlight search results
set incsearch " Makes search act like search in modern browsers

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable


" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

au BufRead,BufNewFile *.twig set filetype=htmljinja

" Pathogen plugin manager
" execute pathogen#infect()

"autocmd FileType javascript compiler nodeunit
"let g:makegreen_stay_on_file=1

"map tab to auto-indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

