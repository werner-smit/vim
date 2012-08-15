let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 0
let g:miniBufExplModSelTarget = 1 

""Ignore Ruby warnings
let g:LustyJugglerSuppressRubyWarning = 1

let mapleader=","

colorscheme wombat256

""Clipboard funkyness
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
set clipboard=unnamedplus
imap <C-v> <Esc><C-v>a

set hidden
set noswapfile

set title 	"change terminals title

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
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
autocmd filetype python set expandtab

""set cmdheight=2
" Turn on the WiLd menu
set wildmenu

set mouse=a
set showcmd
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""Buffer toggle
nmap <f2> :bprevious<CR>
nmap <f3> :bnext<CR>

nmap <Leader>/ :LustyJugglePrevious<CR>
nmap <Leader>c :Bclose<CR>
nmap <Leader>h :MRU<CR>

set colorcolumn=80
highlight ColorColumn guibg=Black

"Powerline tweaks
set laststatus=2


