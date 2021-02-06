call plug#begin('~/.config/nvim/bundle')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'hzchirs/vim-material'
Plug 'keith/swift.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'sheerun/vim-polyglot'

call plug#end()

" sourcekit-lsp
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif

" theme
if (has('nvim'))
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
	set termguicolors
endif

let g:material_style='palenight'
set background=dark
colorscheme vim-material

" nerdtree
nnoremap <C-o> :NERDTreeToggle<CR>

" reload config
nnoremap <F5> :source $MYVIMRC<CR>

filetype plugin on

" Ctrl-Space for autocompletion
inoremap <silent><expr> <c-space> coc#refresh()
nmap <F2> <Plug>(coc-rename)
nmap <F12> <Plug>(coc-definition)
nmap <F10> <Plug>(coc-implementation)

" commenting with ctrl-/
nmap <C-\> <leader>c<Space>
vmap <C-\> <leader>c<Space>

" auto bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

set number
set relativenumber
syntax on
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

set ttimeoutlen=100
