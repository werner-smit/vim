set t_Co=256
syntax on
" Pathogen load
filetype off
set encoding=utf-8
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Set the number to relative. To disable set norelativenumber
set relativenumber
setlocal textwidth=120

set wildignore=*.o,*.obj,.git,*.pyc,lib/model/device/**/*.xml,lib/model/device/**/*.xsd,*.png,*.jpg

let mapleader=","

let g:airline#extensions#tabline#enabled = 1

" Disable able branch view (too much realestate)
let g:airline_section_b = ''
let g:airline_section_y = ''
"let g:airline_section_z = ['percentage', 'line', 'number', 'column', 'number']
let g:airline_section_z = '%3p%%:%v'
"let g:airline_extensions = ['bufferline', 'tabline', 'tagbar']

"let g:airline#extensions#default#section_truncate_width = {
"    \ 'b': 79
"    \ 'x': 60,
"    \ 'y': 88,
"    \ 'z': 10,
"    \ 'warning': 10,
"    \ 'error': 10,
"    \ }

"let python_highlight_all = 1

"Powerline tweaks
" set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'
let g:airline_theme = 'dark'
set laststatus=2   " Always show the statusline
let g:Powerline_symbols = 'unicode'
let g:airline_symbols_ascii = 1
"let g:airline_section_x=""

" For gruvbox fonts
let g:gruvbox_italic=1
set termguicolors
"
"colorscheme wombat256
"colorscheme rdark
"colorscheme herald
"colorscheme molokai
" :colorscheme mustang
colorscheme ayu
colorscheme anotherdark
colorscheme desertEx
colorscheme gruvbox

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
let g:airline_theme = 'minimalist'
let g:airline_theme = 'gruvbox'


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
"
" set modeline. This enables vim to parse comments on files to set filetype
" and other options
set modeline

syntax enable
set shiftwidth=4 tabstop=4
filetype plugin indent on
autocmd FileType javascript set shiftwidth=2 tabstop=2
autocmd FileType python set omnifunc=pythoncomplete#Complete

"let g:ycm_python_binary_path = '/usr/bin/python2.7'
"let g:ycm_server_python_interpreter = '/usr/bin/python2.7'


"let g:ycm_python_binary_path = '/home/werner/src/voss-deviceapi/env/bin/python'
"let g:ycm_server_python_interpreter = '/home/werner/src/voss-deviceapi/env/bin/python'
"
let g:ycm_python_binary_path = '/home/werner/.pyenv/shims/python2.7'
let g:ycm_server_python_interpreter = '/home/werner/.pyenv/shims/python2.7'

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
setlocal nobuflisted
" Legacy. We use popes buffer [ b or ]b now
" nmap <Leader>q :bprevious<CR>
" nmap <Leader>w :bnext<CR>

"augroup QFix
"    autocmd!
"    autocmd FileType qf setlocal nobuflisted
"augroup END

nmap <f5> :NERDTreeToggle<CR>
nmap <f6> :NERDTreeFind<CR>

nmap <Leader>d :Bclose<CR>
nmap bd :Bclose<CR>
"nmap <Leader>d :bdelete<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>


map <Leader>f :!python -m json.tool<CR>
" autocmd FileType python map <buffer> <[[>
" set colorcolumn=80
"highlight ColorColumn guibg=Black
"
"au BufRead *.py set colorcolumn=81
"au BufRead *.py let &colorcolumn=join(range(81,120),",")
"au BufRead *.py highlight ColorColumn ctermbg=235 guibg=#2c2d27


hi MBEVisibleActive guifg=#FFFFFF guibg=#3399ff
hi MBEVisibleChangedActive guifg=#FFFFFF guibg=#FF00FF
hi MBEVisibleNormal guifg=#66ccff guibg=#666666
hi MBENormal guifg=#cccccc guibg=#666666
hi MBEChanged guifg=#FF00FF guibg=#666666

" Set some GUI options
set guifont=Monospace\ 14
set guifont=Source\ Code\ Pro\ for\ Powerline\ 12"
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12"
set guifont=Source\ Code\ Pro\ 11
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

" " python-mode settings
" let g:pymode_folding = 0
" let g:pymode_utils_whitespaces = 0
" let g:pymode_lint = 0
" let g:pymode_lint_write = 0
" let g:pymode_lint_checkers = ['pyflakes', 'pep8']
" let g:pymode_lint_config = "/home/werner/src/voss2/.pylintrc"
" let g:pymode_lint_on_fly = 0
" let g:pymode_lint_sort = ['E', 'C', 'I']
" let g:pymode_lint_cwindow = 0
" let g:pymode_rope_completion_bind = '<C-Space>'

" let g:pymode_paths = ['/home/werner/src/voss2/eggs/', '/home/werner/src/voss2/src/']
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope_lookup_project = 0
" let g:pymode_rope_regenerate_on_write = 0
" let g:pymode_rope = 0
" let g:pymode_options_max_line_length = 119

" Somewhere during some update, I've lost automatic underlining in spellon
" mode. Re-enabling it here.
hi SpellBad cterm=underline ctermfg=red gui=undercurl

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
"let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_checkers=['flake8']

let g:syntastic_python_flake8_args='--ignore=E501,E225,E702,E265'

" Autopep8
let g:autopep8_max_line_length=119
" Autoflake8 unused import to remove
"let g:autoflake_imports="django,requests,urllib3,mock,deviceapi"
let g:autoflake_remove_all_unused_imports = 1
let g:autoflake_cmd = "/home/werner/bin/autoflake"
" Grep all python files in current path.
" cwindow will open in the bottom right if vertical splits are present. This sets it to full width. see :h quickfix-window
command! -nargs=+ -complete=file -bar Grep botright copen | grep! <args> **/*.py
" botright cwindow

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
:command! -nargs=* -complete=shellcmd GitBlame let blah = system('git blame '.expand("%")) | let cur = getpos('.') | new | setlocal buftype=nofile bufhidden=hide noswapfile | put =blah | :call cursor(cur[1], cur[2]) | only

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jds :right horizontal YcmCompleter GoTo<CR>
nnoremap <leader>jh :YcmCompleter GetDoc<CR>

nnoremap <leader>t :FZF<CR>
nnoremap <leader>r :Buffers<CR>

" Arg Wrap: https://github.com/jeetsukumaran/vim-argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>

" Sideways plugin allows moving arguments, list items and many other objects
" left or right.
" mnemonic would be leader move <direction>
nnoremap <leader>mh :SidewaysLeft<cr>
nnoremap <leader>ml :SidewaysRight<cr>

noremap <silent> <leader>B oimport pudb; pudb.set_trace()<esc>
noremap <silent> <leader>b Oimport pudb; pudb.set_trace()<esc>
