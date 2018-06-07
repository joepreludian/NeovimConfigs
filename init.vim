""
"" Vundle stuff
""
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/joey/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/joey/.cache/dein')
  call dein#begin('/home/joey/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/joey/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  
  call dein#add('scrooloose/nerdtree')

  " Running geoplete
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')

  " call deoplete#enable()
  let g:deoplete#enable_at_startup = 1

  call dein#add('morhetz/gruvbox')

  call dein#add('airblade/vim-gitgutter')

  " You can specify revision/branch/tag.

  " Required:
  call dein#end()
  call dein#save_state()
endif

" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/bin/python3'

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


""
"" Joey Vim customizations
""

" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" autocmd vimenter * NERDTree
map <silent>. :NERDTreeToggle<CR>

" Resize PANE
" Maps Alt-[h,j,k,l] to resizing a window split

map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Vertical splitting
map <silent>\ <C-w>v

" Horizontal splitting
map <silent>] <C-w>S

" Kill last splitting
map <silent>; <C-W>q

map <F8> :set paste!<CR>
map <silent>n :set nu!<CR>

" Custom stuff
au BufNewFile,BufRead Jenkinsfile setf groovy

" Themes
set background=dark
colorscheme gruvbox
