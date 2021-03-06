packadd minpac
call minpac#init()
call minpac#add('kaicataldo/material.vim')
call minpac#add('nightsense/snow')
call minpac#add('sts10/vim-pink-moon')
call minpac#add('yous/vim-open-color')
call minpac#add('mileszs/ack.vim')
call minpac#add('nightsense/cosmic_latte')
call minpac#add('mhartington/oceanic-next')
call minpac#add('Nequo/vim-allomancer')
call minpac#add('w0rp/ale')
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('mengelbrecht/lightline-bufferline')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('python-mode/python-mode')
call minpac#add('neovimhaskell/haskell-vim')
call minpac#add('Quramy/tsuquyomi')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('fatih/vim-go')
call minpac#add('junegunn/fzf')
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
call minpac#add('ianks/vim-tsx')
call minpac#add('scrooloose/nerdtree')
call minpac#add('kien/ctrlp.vim')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('sheerun/vim-polyglot')

" Custom commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Colour scheme
syntax on
" syntax enable
filetype plugin indent on
set termguicolors "Remove this in urxvt
set background=dark
" colorscheme nova
" colorscheme OceanicNext
" colorscheme solarized
" colorscheme cosmic_latte
" colorscheme open-color
" colorscheme snow
colorscheme material

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
let g:material_theme_style = 'default'
" let g:material_theme_style = 'palenight'
" let g:material_theme_style = 'dark'
let g:material_terminal_italics = 1

let g:airline_theme = 'material'

set encoding=UTF-8
let g:lightline = { 'colorscheme': 'material_vim' }

" Leader mapping
:let mapleader = ','
noremap <Leader>v <C-w>v
noremap <Leader>s <C-w>s
noremap <Leader>z <C-w>z
noremap <Leader>c :ccl<CR>
noremap £ :norm i#<CR>
noremap <Leader>f :FZF<CR>
noremap <Leader>x :ALEGoToDefinition<CR>
noremap <Leader>t :IndentGuidesToggle<CR>
noremap <Leader>e :lopen<CR>

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

let g:go_version_warning = 0

" clear search highlight
nnoremap § :nohls<cr>

" ctrlp
nnoremap <leader>y :CtrlPBuffer<cr>

" nerdtree
nnoremap <leader>[ :NERDTree<cr>
nnoremap <leader>] :NERDTreeClose<cr>
nnoremap <leader>' :NERDTreeFind<cr>
let g:NERDTreeWinSize=25

" JS config vars
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Show line numbers
set number

set ruler

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
let g:prettier#config#print_width = 70
let g:prettier#config#tab_width = 4
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#trailing_comma = 'all'

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Keybinding for terminal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set ignorecase
set smartcase
set hlsearch
set incsearch 

set laststatus=2
set statusline=\ \ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
