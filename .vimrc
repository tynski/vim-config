set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" autocompletion
Plugin 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
"Plugin 'klen/rope-vim'

" filesystem
Plugin 'kien/ctrlp.vim'

"code folding
Plugin 'tmhedberg/SimpylFold'

" python plugins
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/Pydiction'

"colors
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" folding
let g:SimpylFold_docstring_preview = 1

" autocomplete customization
let g:ycm_autoclose_preview_window_after_completion=1
" goto definiion
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" set numbers
set number

" no beep
set noeb vb t_vb=

" colors
colorscheme zenburn

" breaking bad habbits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" unleash the cursor
" set virtualedit=all

" Enable folding
"set foldmethod=indent
"set foldlevel=99

" Enable folding with the spacebar
" noremap <space> za

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead, BufNewFile *.py,*pyw set shiftwidth=4
au BufRead, BufNewFile *.py,*.pyw set expandtab
au BufRead, BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead, BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Flag unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" utf support
set encoding=utf-8 

" full syntax highlighting 
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za

"----------Stop python PEP 8 stuff--------------

" acticate powerline
"call vam#ActivateAddons(['powerline'])
