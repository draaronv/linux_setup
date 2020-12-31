"Set the numbers on the side"
set number
set ignorecase
set nocompatible
set backspace=2
"Allows for the implementation of the mouse"
set mouse=a
set laststatus=2

"Window management"
set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"Resizing of windows
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
syntax on
"Plugins
call plug#begin()
Plug 'valloric/youcompleteme'
Plug 'nvie/vim-flake8'
Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/fzf'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <F2> :NERDTree<CR>
call plug#end()
set termguicolors
let ayucolor="dark"
colorscheme ayu
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
noremap <F3> :Autoformat<CR>
noremap <F4> :ALEFix<CR>
let g:ale_linters={'python':['flake8']}
let g:ale_fixers={'*':[],'python':['black']}
set hlsearch
hi Search guibg=Red
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
packadd termdebug
let g:termdebug_wide=1
nnoremap <silent> <leader>b :Break<CR>
nnoremap <silent> <leader>bc :Clear<CR>
nnoremap <silent> <leader>c :Continue<CR>
