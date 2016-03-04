"
set nu
set relativenumber
syntax on
set ic

"" show current mode on the status bar 
set showmode

" highlight search term
set nohlsearch

" the ruler is displayed on the right side of the status line at the bottom of the window
set ruler

" start searching when you type the first character
set incsearch

"--- Set 'tabstop' and 'shiftwidth' to whatever you prefer and use 'expandtab'.  This way you will always insert spaces.'

"Number of spaces that a <Tab> in the file counts for.
set tabstop=2
" Use the appropriate number of spaces to insert a <Tab>.
set expandtab
"Number of spaces to use for each step of (auto)indent.  Used for |'cinde  nt'|, |>>|, |<<|, etc.
set shiftwidth=2

"---



"colorscheme hemisu
"set t_Co=256
"set background=dark
"set background=light

"let g:acp_behaviorSnipmateLength = 1

set nocompatible              " be iMproved
filetype off                  " required!

map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
"EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

call plug#begin('~/.vim/plugged')

" let vim-plug manage Vundle
" required! 

" My plugin here:
"
" original repos on GitHub
"Plug 'tpope/vim-fugitive'
"Plug 'easymotion/vim-easymotion'
"Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plug 'tpope/vim-rails.git'
Plug 'mattn/emmet-vim'
"
"Nodejs 'omnifunc' function of vim
Plug 'ahayman/vim-nodejs-complete'
Plug 'moll/vim-node'
"Plug 'marijnh/tern_for_vim'

Plug 'altercation/vim-colors-solarized'

"" vim-scripts repos
Plug 'L9'
"Plug 'FuzzyFinder'
"" non-GitHub repos
"Plug 'git://git.wincent.com/command-t.git'
"" Git repos on your local machine (i.e. when working on your own Plug)
"Plug 'file:///Users/gmarik/path/to/Plug'
"" ...
Plug 'The-NERD-tree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Syntastic'
"Plug 'Valloric/YouCompleteMe'
Plug 'mkitt/tabline.vim'
Plug 'easymotion/vim-easymotion'

"----for auto pair
Plug 'delimitMate.vim'

"-------garbas/vim-snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
"-------
"
Plug 'othree/vim-autocomplpop'
Plug 'ctrlp.vim'

Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bling/vim-airline'

" All of your Plugins must be added before the following line
call plug#end()            " required"
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
"

let g:solarized_termcolors=256
colorscheme solarized
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
