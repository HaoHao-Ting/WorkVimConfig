set fillchars+=vert:\|
set mouse=a
set hidden
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {'colorscheme': 'wombat', }
set backspace=indent,eol,start
set tabstop=4
let g:vim_json_syntax_conceal = 0
set colorcolumn=80
set autoread
:set lines=999 columns=999

set pastetoggle=<F2>
" Adjust the terminal and vim color
let &t_ut=''

" Enable 256 colors
set t_Co=256
"hi CursorLine term=bold cterm=bold ctermbg=235
"hi CursorLine term=bold cterm=bold ctermbg=235
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE
hi CursorLineNr ctermfg=white ctermbg=235 cterm=NONE guibg=NONE guifg=red

" Set the leader key
let mapleader=" "

set nocompatible " Is not compatible with vi
set encoding=utf-8 " Set the encoding format to UTF-8

syntax on " Syntax highlighting
" show linenumber and relative linenumber
set number
set relativenumber
" Highlight current line
set cursorline
"set ruler
set showmode " Bottom display the mode info.

" Enable indentation
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set st=4 sw=4 et
set shiftwidth=4

" Intelligently adapt the indentation of different types of files
filetype plugin on
filetype indent on
filetype plugin indent on

" When scrolling vertically, the cursor is kept 5 rows away from the top/bottom
set scrolloff=5

" Automatically switch the working directory
set autochdir

" Turn off automatic line wrapping
set nowrap

" Solve the problem that the Backspace key cannot be used in some cases
set backspace=indent,eol,start

" Command auto-completion related
set wildmenu

" About searching and highlighting
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

" Alleviate the lag when opening single-line large files
set lazyredraw
set ttyfast

"No backup file
set nobackup
set noswapfile
set nowritebackup

" Custom keymap
map Q :q<CR>
map R :source $MYVIMRC<CR>

noremap J 10j
noremap K 10k
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>fs :w<CR>
noremap <LEADER>wq :wqa<CR>


" Configure the status bar
set laststatus=2
" hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15
" set statusline=\ @Dotadiw " '@Dotadiw' is to customize the display content of the status bar header.
" set statusline+=\ \|\|\ [FileName:\ %f]
" set statusline+=%=
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ [%l:%c]

" Reopen the last edited position in files
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif



"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%2*%m%*                                   "modified flag
"set statusline+=%1*\ %<%F\                                "File+path
"set statusline+=%2*\ %y\                                  "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
"function! HighlightSearch()
"  if &hls
"    return 'H'
"  else
"    return ''
"  endif
"endfunction
"hi User1 guifg=#ffdad8  guibg=#880c0e
"hi User2 guifg=#000000  guibg=#F4905C
"hi User3 guifg=#292b00  guibg=#f4f597
"hi User4 guifg=#112605  guibg=#aefe7B
"hi User5 guifg=#051d00  guibg=#7dcc7d
"hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
"hi User8 guifg=#ffffff  guibg=#5b7fbb
"hi User9 guifg=#ffffff  guibg=#810085
"hi User0 guifg=#ffffff  guibg=#094afe
" Vim plugin configuration
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'], 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'], 'operators': '_,_'}

" Nerd Comment
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
