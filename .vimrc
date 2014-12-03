" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set wildignore=*.o,*.obj,.git,*.pyc,lib/model/device/**

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplSplitBelow = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplDebugLevel = 0
let g:miniBufExplorerDebugLevel = 0
let python_highlight_all = 1

""Ignore Ruby warnings
let g:LustyJugglerSuppressRubyWarning = 1

let mapleader=","

colorscheme wombat256

""Clipboard funkyness
"#nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
set clipboard=unnamedplus
imap <C-v> <Esc><C-v>a

set hidden
set noswapfile

set title 	"change terminals title

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers

set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
""set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
"set incsearch     " show search matches as you type
set nowrap " Disable Wrapping
syntax enable

filetype plugin indent on
autocmd FileType javascript set shiftwidth=4 tabstop=4
autocmd FileType python set omnifunc=pythoncomplete#Complete
set expandtab

""set cmdheight=2
" Turn on the WiLd menu
set wildmenu

set mouse=a
set showcmd
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Remap Save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>
""Buffer toggle
nmap <Leader>q :bprevious<CR>
nmap <Leader>w :bnext<CR>

nmap <f6> :TlistToggle<CR>
nmap <f5> :NERDTreeToggle<CR>

nmap <Leader>/ :LustyJugglePrevious<CR>
nmap <Leader>c :Bclose<CR>
nmap <Leader>h :MRU<CR>


map <Leader>f :!python -m json.tool<CR>
autocmd FileType python map <buffer> <[[>
set colorcolumn=80
highlight ColorColumn guibg=Black

au BufRead *.py set colorcolumn=81
au BufRead *.py let &colorcolumn=join(range(81,120),",")
au BufRead *.py highlight ColorColumn ctermbg=235 guibg=#2c2d27

"Powerline tweaks
set laststatus=2

hi MBEVisibleActive guifg=#FFFFFF guibg=#3399ff
hi MBEVisibleChangedActive guifg=#FFFFFF guibg=#FF00FF
hi MBEVisibleNormal guifg=#66ccff guibg=#666666
hi MBENormal guifg=#cccccc guibg=#666666
hi MBEChanged guifg=#FF00FF guibg=#666666

"Open taglist on the right
let Tlist_Use_Right_Window = 1

" Set some GUI options
set guifont=Monospace\ 9
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

" python-mode settings
let g:pymode_folding = 0
let g:pymode_utils_whitespaces = 0
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_lint_config = "/home/werner/src/voss2/.pylintrc"
let g:pymode_lint_on_fly = 0
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_paths = ['/home/werner/src/voss2/eggs/', '/home/werner/src/voss2/src/']
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope = 1 
let g:pymode_options_max_line_length = 119

setlocal textwidth=120
"
" Command-T
let g:CommandTMaxHeight=15
command! -nargs=+ -complete=file -bar Grep grep! <args> **/*.py | copen
