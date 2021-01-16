colorscheme badwolf
set background=dark
syntax enable

set tabstop=4 	  " # of visual spaces per TAB
set softtabstop=4 " # of spaces per TAB when editing
set expandtab	  " tabs are spaces

set number 	    " show line numbers
set showcmd	    " show command in bottom bar
set cursorline	" highlight current line

set lazyredraw  " redraw only when we need to -> faster macros
set showmatch   " highlight matching parens
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
set wildmenu    " visual autocomplete for cmd menu

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

set foldenable          " enable folding
set foldlevelstart=10   " open most folds til level 10
set foldnestmax=10      " maximum number of nested folds

" space open/closes folds
noremap <space> za      

" fold based on indent level
set foldmethod=indent

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/EOL
nnoremap B ^
nnoremap E $

" disable ^ & $
nnoremap ^ <nop>
nnoremap $ <nop>

" disable arrow keys
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

" bind jk to esc 
inoremap jk <esc>

" create new key
let mapleader=","

" toggle gundo
nnoremap <leader>u :UndotreeToggle<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb' " match files top to bottom
let g:ctrlp_switch_buffer = 0 " open files in new buffers
let g:ctrlp_working_path_mode = 0 " change working directory during Vim session

" Reload vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Edit virmc
nnoremap <leader>ev :vsp $MYVIMRC<CR>

" activate pathogen
call pathogen#infect()
call pathogen#helptags()
