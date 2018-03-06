" installs plugin manager vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim-Plugin Section
" for neovim it is ~/.local/share/nvim/plugged
"
call plug#begin('~/.vim/plugged')

"fetches badwolf

Plug 'https://github.com/sjl/badwolf'

"airline
Plug 'vim-airline/vim-airline'

"initialize plugin syztem
call plug#end()



" colors and themes

set t_Co=256 " sets colors to 256

colorscheme badwolf "setting colorscheme to ___

syntax enable	  " syntax highlighting

set nocompatible  "doesn't 'downgrade' you to be compatible with older vims.

" space and tabs

set tabstop=4 	  "number of visual spaces per TAB

set softtabstop=4 "number of spaces in tab when editing

set expandtab	  "tabs are now spaces

set backspace=indent,eol,start "let the backspace key work 'normally'

"UI CONFIG

set number 	"show line numbers

set showcmd	"show command in bottom bar

set cursorline	"highlight current line

filetype plugin indent on "file detection and settings

set wildmenu 	 "better command line completion, shows list of matches

set lazyredraw	 "redraw only when we need to

set showmatch    "highlight matching [{()}]

"searching

set incsearch	"search as char are entered

set hlsearch 	" highlight matches

"turn of search highlight
nnoremap <leader><space> :nohlsearch<CR>

"folding

set foldenable	"enable folding

set foldlevelstart=10	"open most folds by default

set foldnestmax=10	"10 nested fold  max

"space open/closes folds
nnoremap <space> za

"set foldmethod=indent	"fold based on indent level


"movement

"move vertically by visual line
"nnoremap j gj
"nnoremap k gk

"move to beggining/end of line
"nnoremap B ^
"nnoremap E $

"$/^ dont do anyhing
"nnoremap $ <nop>
"nnoremap ^ <nop>

"highlight last inserted text
nnoremap gV `[v`]

"sets spellchecking to english
"set spell spellang=en_us 

"sets airline to always visile 
set laststatus=2

set mouse=a
