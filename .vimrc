" Vundle Plugin Manager
set nocompatible              " be iMproved, required
filetype off                  " required

" Keep Plugin commands between plug#begin/end.
call plug#begin('~/.vim/plugged')

" Let Plug manager plugins, required
Plug 'junegunn/vim-plug'

" A plugin which allows you to use <Tab> for all your insert completion needs
Plug 'ervandew/supertab'

" A file-type sensible comments for Vim.
Plug 'tomtom/tcomment_vim'

" A plugin to display the git options
Plug 'tpope/vim-fugitive'

" A code-completion engine for Vim
Plug 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_global_ycm_extra_conf ='~/.ycm_extra_conf.py'
" let g:loaded_youcompleteme = 1

" A plugin to auto close brackets
Plug 'jiangmiao/auto-pairs'

" Track the engine for snippets
Plug 'SirVer/ultisnips'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Snippets are separated from the engine.
Plug 'honza/vim-snippets'

" A plugin to see the colors directly in vim.
Plug 'gorodinskiy/vim-coloresque'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'

" A pack of colorschemes for vim.
Plug 'liuchengxu/space-vim-dark'

" This plugin causes all trailing whitespace to be highlighted in red.
Plug 'bronson/vim-trailing-whitespace'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end() " required
" To ignore plugin indent changes, instead use:
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line.

" Use airline plugin in all windows.
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Configure the minimum number of tabs needed to show the tabline.
"let g:airline#extensions#tabline#tab_min_count = 2

" Visual autocomplete for command menu.
set wildmenu

" Automatically read files when they've changed.
set autoread

" Make backspace work like most other apps.
set backspace=2

" Set syntax.
syntax on

" Set autoindent.
set ai

"	Show (partial) command in the last line of the screen.
set showcmd

" Use the clipboard from the system in VIM.
set clipboard=unnamedplus

" Highlight current line.
set cursorline
set cursorcolumn

" Tab navigation.
nnoremap H gT
nnoremap L gt

" AutoClose.
imap < <><left>

" Move lines like in atom.
nnoremap <c-s-j> :m .+1<CR>==
nnoremap <c-s-k> :m .-2<CR>==
inoremap <c-s-j> <Esc>:m .+1<CR>==gi
inoremap <c-s-k> <Esc>:m .-2<CR>==gi
vnoremap <c-s-j> :m '>+1<CR>gv=gv
vnoremap <c-s-k> :m '<-2<CR>gv=gv

" Move to beginning/end of line.
nnoremap B ^
nnoremap E $

" Disable arrow keys.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

" Show a vertical line on column 80.
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Encoding UTF-8.
set encoding=utf8

" Set ignorecase and smartcase in search.
set ignorecase
set smartcase

" Search as characters are entered.
set incsearch

" Highlight matches.
set hlsearch

" Option for tab.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" Colors configs.
let g:space_vim_dark_background = 234
colorscheme space-vim-dark " Put the monokai.vim file in .vim/colors
set t_Co=256
hi Comment guifg=#5C6370 ctermfg=59

" Set numbers in lines of file.
set number

" Switch between relative and absolute numbers
map <c-n> :set rnu!<CR>

" Highlight matching [{()}].
set showmatch

" Set F2 button to call NerdTree.
map <F2> :NERDTreeToggle<CR>

" Set F3 button to indent all the file.
map <F3> mzgg=G`z

"Remove all trailing whitespace by pressing F4.
nnoremap <F4> :let s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=s<Bar><CR>

"Reload file
map <F5> :e!<CR>

" Enable the use of spell checker.
map <F6> :set spell spelllang=pt<CR>
" z= Show words suggestions.
" zg Add the word to dict.

" Disable the use of spell checker.
map <F7> :set nospell<CR>
