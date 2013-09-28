scriptencoding utf-8

"pathogen
call pathogen#infect()
call pathogen#helptags()

"General
syntax on
set nocompatible "this file is not vi compatible
let mapleader=","
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set virtualedit=all 
filetype on
filetype plugin on
filetype indent on
set lazyredraw
set synmaxcol=2048
set shellslash
set scrolloff=6
set sidescrolloff=6
set ch=2 "two line commandline
set nowrap
set shortmess+=l
set hidden
set cursorline
set relativenumber
set number
 
"auto change directory on buffer switch
autocmd BufEnter * cd %:p:h

"Show 80 character column
let &colorcolumn=join(range(80,900),",")

set fillchars=stl:/
set listchars=eol:¬,tab:▸\ ,trail:‧

"Search
set incsearch
set ignorecase
set smartcase
set hlsearch

"disable gui toolbar and scrollbars
set guioptions=acg
set mousehide

"colorsheme
set background=dark
colorscheme solarized

"vimux
noremap <Leader>! :VimuxPromptCommand<CR>
noremap <Leader>rl :VimuxRunLastCommand<CR>
noremap <Leader>ri :VimuxInspectRunner<CR>
noremap <Leader>rx :VimuxClosePanes<CR>
noremap <Leader>rq :VimuxCloseRunner<CR>
noremap <Leader>rs :VimuxInterruptRunner<CR>

"NERDTree  https://github.com/scrooloose/nerdtree
nnoremap <F7> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
autocmd vimenter * if !argc() | NERDTree | endif "open on start
" Don't show files with these extensions
let NERDTreeIgnore=[ '\.suo', '\.obj$', '\.ico',
                    \ '\.png', '\.db', '\.userprefs', '\.swp' ]

"UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsExpandTrigger = '<c-l>'

"TagBar  https://github.com/majutsushi/tagbar
nnoremap <F8> :TagbarToggle<CR>

"easy-tags
let g:easytags_by_filetype='~/Dev/tags'
let g:easytags_updatetime_warn=0
let g:easytags_resolve_links=1

"minibufexpl
let g:miniBufExplMaxSize=1
let g:miniBufExplStatusLineText="-"

"eclimd
let g:EclimCompletionMethod = 'omnifunc'
