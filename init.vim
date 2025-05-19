set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'CopilotC-Nvim/CopilotChat.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
Plug 'windwp/nvim-autopairs'
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
call plug#end()

lua << EOF
require("CopilotChat").setup {
  debug = true, -- Enable debugging
  -- See Configuration section for rest
  mappings = {
    reset = {
      normal = '<Leader>l',
      insert = '<C-l>',
    },
    close = {
      normal = '<Leader>cp',
      insert = '<C-cp>',
    },
    complate = {
      insert = '<C-Tab>',
    },
  }
}
EOF


" Set :CopilotChat to leader key c in normal mode
nnoremap <Leader>cp :CopilotChatOpen<CR>

" Set :CopilotChat to leader key 'c' in visual mode
vnoremap <Leader>cp :CopilotChat<CR>
