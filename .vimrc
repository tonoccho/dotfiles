"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/seiji/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/seiji/.cache/dein')
  call dein#begin('/home/seiji/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/seiji/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set number
set expandtab
set tabstop=2
set shiftwidth=2

nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set statusline=\ \ %F
set laststatus=2
