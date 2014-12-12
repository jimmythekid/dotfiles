" James McErlain 2014.11.22
" Intial Set Up and Settings

let g:solarized_termcolors=256
"colorscheme solarized
"set background=light
colorscheme tomorrow-night


syntax on

"colorscheme tomorrow-night
"colorscheme solarized

  set number
  set autoread
  set cul 
  set ruler                     " show the line number on the bar
  set more                      " use more prompt
  set autoread                  " watch for file changes
  set number                    " line numbers
  set hidden
  " set noautowrite               " don't automagically write on :next

  set lazyredraw                " don't redraw when don't have to
  set showmode
  set showcmd
  set nocompatible              " vim, not vi
  
	" set autoindent smartindent    " auto/smart indent
  set smarttab                  " tab and backspace are smart
  set tabstop=2                 " 6 spaces
  set shiftwidth=2
  set scrolloff=5               " keep at least 5 lines above/below
  set sidescrolloff=5           " keep at least 5 lines left/right
  set history=200
  set backspace=indent,eol,start
  set linebreak
  set cmdheight=2               " command line two lines high
  set undolevels=1000           " 1000 undos
  set updatecount=100           " switch every 100 chars
  set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
  set ttyfast                   " we have a fast terminal
  set noerrorbells              " No error bells please
  set shell=bash
  set fileformats=unix
  set ff=unix

  filetype on                   " Enable filetype detection
  filetype indent on            " Enable filetype-specific indenting
  filetype plugin on            " Enable filetype-specific plugins

  set wildmode=longest:full
  set wildmenu                  " menu has tab completion
  let maplocalleader=','        " all my macros start with ,
  set laststatus=2

  " searching
  set incsearch                 " incremental search
  set ignorecase                " search ignoring case
  set hlsearch                  " highlight the search
  set showmatch                 " show matching bracket
  set diffopt=filler,iwhite     " ignore all whitespace and sync


	" Highlight Line and Cursor
  hi CursorLine ctermbg=8 ctermfg=38
  hi Cursor ctermbg=15 ctermfg=8


  " backup
  set backup
  set backupdir=~/.vim_backup
  set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
  "set viminfo='100,f1



  " spelling
  if v:version >= 700
  " Enable spell check for text files
      autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
  endif

  " mappings
  " toggle list mode
    nmap <LocalLeader>tl :set list!<cr>

	" toggle paste mode
    nmap <LocalLeader>pp :set paste!<cr>


" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif


 if has('vim_starting')
   set nocompatible               " Be iMproved
   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/')) 



" Let NeoBundle manage NeoBundle

 " Required:

 NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.

" Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'JuliaLang/julia-vim'
 NeoBundle 'wincent/command-t'
 NeoBundle 'derekwyatt/vim-scala'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'derekwyatt/ag.vim'
 NeoBundle 'bufkill.vim'
 NeoBundle 'MarcWeber/vim-addon-completion'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'DfrankUtil'
 NeoBundle 'EasyMotion'
 NeoBundle 'derekwyatt/vim-fswitch'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'endel/vim-github-colorscheme'
 NeoBundle 'vim-scripts/gnupg.vim'
 NeoBundle 'sjl/gundo.vim'
 NeoBundle 'laurentgoudet/vim-howdoi'
 NeoBundle 'noahfrederick/vim-hemisu'
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'elzr/vim-json'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'derekwyatt/vim-npl'
 NeoBundle 'derekwyatt/vim-protodef'
 NeoBundle 'derekwyatt/vim-sbt'
 NeoBundle 'derekwyatt/vim-scala'
 NeoBundle 'wincent/command-t'
 NeoBundle 'altercation/vim-colors-solarized'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'godlygeek/tabular'
 NeoBundle 'vim-scripts/TwitVim'
 NeoBundle 'tpope/vim-unimpaired'
 NeoBundle 'vimprj'
 NeoBundle 'VisIncr'
 NeoBundle 'drmingdrmer/xptemplate'
 NeoBundle 'GEverding/vim-hocon'
 NeoBundle 'chriskempson/tomorrow-theme'
 NeoBundle 'fatih/vim-go'
 NeoBundle 'wting/rust.vim'

 call neobundle#end()


" Required:
 filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

 NeoBundleCheck

