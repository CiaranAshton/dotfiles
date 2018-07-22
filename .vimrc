packadd minpac
call minpac#init()
call minpac#add('fatih/vim-go')
call minpac#add('junegunn/fzf')
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('prettier/vim-prettier')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('pangloss/vim-javascript')
call minpac#add('trevordmiller/nova-vim')
call minpac#add('othree/html5.vim')
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('mxw/vim-jsx')
call minpac#add('scrooloose/nerdtree')
call minpac#add('kien/ctrlp.vim')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('sheerun/vim-polyglot')

" Custom commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Leader mapping
:let mapleader = ','
noremap <Leader>v <C-w>v
noremap <Leader>s <C-w>s
noremap <Leader>z <C-w>z
noremap <Leader>c :ccl<CR>
noremap £ :norm i#<CR>
noremap <Leader>f :FZF<CR>

" Golang settings
let g:go_fmt_command = "goimports"
noremap <Leader>i :GoImports<CR>
noremap <Leader>m :GoFmt<CR>
noremap <Leader>r :GoRun<CR>
noremap <Leader>l :GoLint<CR>

" Go syntax highlighting
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_build_constraints = 1

" clear search highlight
nnoremap § :nohls<cr>

" ctrlp
nnoremap <leader>y :CtrlPBuffer<cr>

" nerdtree
nnoremap <leader>[ :NERDTree<cr>
nnoremap <leader>] :NERDTreeClose<cr>
nnoremap <leader>' :NERDTreeFind<cr>

" JS config vars
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Show line numbers
set number

set cursorline
set noswapfile

" window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <leader><leader> <C-^>

" Set tab width
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Prettier settings
let g:prettier#config#print_width = 120
let g:prettier#config#tab_width = 4
let g:prettier#config#bracket_spacing = 'true'

" Keybinding for terminal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

" Colour scheme
colorscheme nova
syntax on
