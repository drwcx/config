" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let ayucolor="mirage"
colorscheme ayu
set background=dark
syntax enable

" HardTime (delayed h/j/k/l) 
" let g:hardtime_default_on = 1

set formatoptions-=cro "disables continuation of comments on new lines

set colorcolumn=100 " vertical column at char 100 on each line
set autoindent     " copy current indentation when inserting new line
set path+=**       " search down into subfolders & tab completion for all related tasks
set wildmenu       " display all matching files when we tab complete
set relativenumber " show relative numbers
set laststatus=2   " lightline fix
set autoindent     " enable autoindentation
set tabstop=4 	   " # of visual spaces per tab
set softtabstop=4  " # of spaces per tab when editing
set shiftwidth=4   " # of spaces to use for autoindent
set expandtab	   " tabs are spaces

set number 	       " show line numbers
set showcmd	       " show command in bottom bar
set cursorline	   " highlight current line

set lazyredraw     " redraw only when we need to -> faster macros
set showmatch      " highlight matching parens
set incsearch      " search as characters are entered
set hlsearch       " highlight matches
set wildmenu       " visual autocomplete for cmd menu
filetype plugin indent on       " activate extension-specific vim settings
" Create the `tags` file (requires ctags) ; ^ = control
"   - Use ^] to jump to tag under cursor
"   - Use g^] for ambiguous tags
"   - Use ^t to jump back up the tag stack
" For a visual list of tags, use taglist
command! MakeTags !ctags -R .

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

inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

" bind jk to esc 
inoremap jk <esc>

" create new key
let mapleader=","

" toggle gundo
nnoremap <leader>u :UndotreeToggle<CR>

"toggle NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>

" toggle ack/Ag
nnoremap <leader>a :Ack<Space>

" nohl remap
nnoremap <leader>/ :nohlsearch<CR>

" change to current directory
nnoremap <leader>cd :cd %:p:h<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb' " match files top to bottom
let g:ctrlp_switch_buffer = 0 " open files in new buffers
let g:ctrlp_working_path_mode = 0 " change working directory during Vim session

" Silver searcher as ack substitute
let g:ackprg = 'ag --vimgrep'

" Reload vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Edit virmc
nnoremap <leader>ev :vsp $MYVIMRC<CR>

" activate pathogen
call pathogen#infect()
call pathogen#helptags()

" autocommands
" set comment string for Python
autocmd FileType python setlocal commentstring=#\ %s

