" fucking xterm
set t_Co=256
" This must be first, because it changes other options as side effect
"set nocompatible
" basic stuff
execute pathogen#infect()
filetype plugin on

syntax on
" hoverline
set cul
set ruler
" search
set hlsearch
" toggle highlight.
let hlstate=0
nnoremap <c-f> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>
set incsearch
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
noremap <C-d> :sh<cr> " bash 
" change the mapleader from \ to ,
let mapleader=","

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

set pastetoggle=<F2>

set guitablabel=\[%N\]\ %t\ %M 

" solarized
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
" cursor
if has("autocmd")
  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
  au InsertChange * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
endif

"let &t_SI = \"\<Esc>]12;white\x7"
"let &t_EI = \"\<Esc>]12;white\x7"
" nerd tree
map <C-n> :NERDTreeToggle<CR>

"folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" highlight line depend on mode
":autocmd InsertEnter * set nocul
":autocmd InsertLeave * set cul
" snejku save
"imap <C-c> <Esc>:w<CR>
"map <C-c> :w<CR>
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

