syntax on 

set clipboard+=unnamedplus
"set guicursor
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set smartindent
set nu
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set encoding=utf8
filetype plugin on

"Give more space for displaying messages.
set cmdheight=2

set updatetime=50

set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
"Plug 'SirVer/ultisnips'
"Plug 'neovim/nvim-lsp'
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'nvim-treesitter/playground'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dense-analysis/ale'
Plug 'vigoux/LanguageTool.nvim'

" Color schemes
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:python3_host_prog='/usr/bin/python3'

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

let g:gruvbox_invert_selection='0'

colorscheme gruvbox 
set background=dark

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
  enable = true,              -- false will disable the whole extension
  },
}
EOF

" Configure ALE
let g:ale_disable_lsp = 1
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_fix_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" Configure coc.nvim
let g:coc_enable_locationlist = 0

let mapleader=" "
let g:netrw_browse_splits=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrl_p_use_caching=0

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Ultisnips configuration
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>= :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>vv :vertical resize 100<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>u :UndotreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>c :Commentary<CR>
vnoremap <Leader>c :Commentary<CR>
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y
nnoremap <Leader>rc :wincmd v<bar> :e ~/.vimrc<CR>

" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <leader>f <Plug>(coc-format-selecte)
xmap <leader>f <Plug>(coc-format-selected)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart<CR>

