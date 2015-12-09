" Pathogen load
filetype off
set encoding=utf-8
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set wildignore=*.o,*.obj,.git,*.pyc,lib/model/device/**/*.xml,lib/model/device/**/*.xsd

let g:airline#extensions#tabline#enabled = 1

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
colorscheme rdark

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
set shiftwidth=4 tabstop=4
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

nmap <f5> :NERDTreeToggle<CR>

nmap <Leader>c :Bclose<CR>
nmap <Leader>d :bdelete<CR>
nmap <Leader>h :MRU<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>


map <Leader>f :!python -m json.tool<CR>
" autocmd FileType python map <buffer> <[[>
set colorcolumn=80
highlight ColorColumn guibg=Black

au BufRead *.py set colorcolumn=81
au BufRead *.py let &colorcolumn=join(range(81,120),",")
au BufRead *.py highlight ColorColumn ctermbg=235 guibg=#2c2d27

"Powerline tweaks
" set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

hi MBEVisibleActive guifg=#FFFFFF guibg=#3399ff
hi MBEVisibleChangedActive guifg=#FFFFFF guibg=#FF00FF
hi MBEVisibleNormal guifg=#66ccff guibg=#666666
hi MBENormal guifg=#cccccc guibg=#666666
hi MBEChanged guifg=#FF00FF guibg=#666666

" Set some GUI options
set guifont=Monospace\ 9
set guifont=Source\ Code\ Pro\ for\ Powerline\ 9"
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9"
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

" python-mode settings
let g:pymode_folding = 0
let g:pymode_utils_whitespaces = 0
let g:pymode_lint = 0
let g:pymode_lint_write = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_lint_config = "/home/werner/src/voss2/.pylintrc"
let g:pymode_lint_on_fly = 0
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_lint_cwindow = 0
let g:pymode_rope_completion_bind = '<C-Space>'

let g:pymode_paths = ['/home/werner/src/voss2/eggs/', '/home/werner/src/voss2/src/']
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope = 0
let g:pymode_options_max_line_length = 119


let g:pymode_breakpoint_cmd = 'import pudb; pudb.set_trace()  # XXX BREAKPOINT'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225,E702,E265'
setlocal textwidth=120
"
" Command-T
let g:CommandTMaxHeight=15

" Grep all python files in current path.
command! -nargs=+ -complete=file -bar Grep copen | grep! <args> **/*.py 

" Surround with single quote
nmap <Leader>s ysiw

" Vim notes: RecentNotes
nmap <Leader>nr :RecentNotes<cr>
nmap <Leader>nn :edit note:<cr>
nmap <Leader>nd :DeleteNote<cr>

" comment code
vnoremap # :s#^#\##<cr>:let @/ = ""<cr>
vnoremap -# :s#^\###<cr>:let @/ = ""<cr>

" Read the output of a command into a buffer
":command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
:command! -nargs=* -complete=shellcmd GitBlame let blah = system('git blame '.expand("%")) | tabnew |  new | setlocal buftype=nofile bufhidden=hide noswapfile | put =blah | only

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoTo<CR>
