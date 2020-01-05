" vim: set fdm=marker: " Treat comments as folds
"
set nocompatible              " be iMproved, required


" Leader
let mapleader = "\<Space>"

" Local Directories
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" always show signcolumns
" set signcolumn=yes

" Settings
set autoindent " Copy indent from last line when starting new line
set backspace=indent,eol,start
set colorcolumn=81 " Draw column after 80 chars
set cursorline " Highlight current line
" set diffopt=filler " Add vertical spaces to keep right and left aligned
" set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8
set expandtab " Expand tabs to spaces
" set foldcolumn=0 " Column to show folds
" set foldenable " Enable folding
" set foldlevel=0 " Close all folds by default
" set foldmethod=syntax " Syntax are used to specify folds
" set foldminlines=0 " Allow folding single lines
" set foldnestmax=5 " Set max fold nesting level
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set hidden " When a buffer is brought to foreground, remember undo history and marks
" set history=1000 " Increase history from 20 default to 1000
set ignorecase " Ignore case of searches
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
" set magic " Enable extended regexes
set mouse=a " Enable mouse in all modes
set noerrorbells " Disable error bells
set nohlsearch " Handled by Easymotion plugin
set noincsearch " Handled by Easymotion plugin
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set nu " Enable line numbers
" set ofu=syntaxcomplete#Complete " Set omni-completion method
set regexpengine=1 " Use the old regular expression engine (it's faster for certain language syntaxes)
" set relativenumber
" set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/sh " Use /bin/sh for executing shell commands
set shiftwidth=4 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim
set showcmd " Show keypresses
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search pattern contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=4 " Tab key results in 2 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
" set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
" set switchbuf=""
set title " Show the filename in the window titlebar
" set ttyfast " Send more characters at a given time
set undofile " Persistent Undo
" set viminfo=%,'9999,s512,n~/.vim/viminfo " Restore buffer list, marks are remembered for 9999 files, registers up to 512Kb are remembered
set visualbell " Use visual bell instead of audible bell (annnnnoying)
" set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
" set wildignore+=.DS_Store
" set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
" set wildignore+=*/bower_components/*,*/node_modules/*
" set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
" set wildmenu " Hitting TAB in command mode will show possible completions above command line
" set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file
set grepprg=rg


"" Configuration
""

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter' " Show git diff in gutter
Plug 'airblade/vim-rooter' "Helps FZF behave as expected (e.g. project-switching)
Plug 'christoomey/vim-tmux-navigator' " Navigate between vim and tmux panes
Plug 'tomasr/molokai'
Plug 'easymotion/vim-easymotion' " Navigation
Plug 'edkolev/tmuxline.vim' " Tmux line matches vim airline
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'luochen1990/rainbow'
" Plug 'lyuts/vim-rtags'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'pangloss/vim-javascript'
Plug 'pboettch/vim-cmake-syntax'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'idanarye/vim-vebugger', { 'branch': 'develop' }
Plug 'keith/investigate.vim'
call plug#end()            " required

let g:investigate_use_dash=1

" Syntax highlighting
syntax on
set background=dark
set termguicolors
" colorscheme vim-monokai-tasty
colorscheme molokai

" Transparency in Alacritty
hi Normal ctermbg=NONE guibg=NONE

au BufRead,BufNewFile *.md setlocal textwidth=80

" Navigation and Splits

" Pane Navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Pane Swapping TODO


" Exit terminal mode using Exc without messing up FZF escaping
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif

" FZF
command! AllFiles execute 'Files' '~/'

" Shorthand commands for opening terminal splits
command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

" Leader Config
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" FZF Mappings
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GFiles<CR>

nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>s :AllFiles<CR>

nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>L :Lines<CR>
nnoremap <Leader>' :Marks<CR>

nnoremap <Leader>a :NERDTreeToggle<CR>
nnoremap <Leader>; :TagbarToggle<CR>

nnoremap <Leader>H :Helptags!<CR>
nnoremap <Leader>C :Commands<CR>

" Command and Search History
nnoremap <Leader>: :History:<CR>
nnoremap <Leader>/ :History/<CR>

" Key Mappings
nnoremap <Leader>M :Maps<CR>

" Window Splits
nnoremap <Leader>o :only<CR>
nnoremap <Leader>v <c-w>v
nnoremap <Leader>s <c-w>s

" config open
nnoremap <Leader>cc :vsplit ~/.vimrc<CR>
nnoremap <Leader>cs :source ~/.vimrc<CR>

nnoremap <leader>k :call investigate#Investigate('n')<CR>
vnoremap <leader>k :call investigate#Investigate('v')<CR>

" Plugin Config------------------------------------------

" COC
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Better Whitespace Settings
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:better_whitespace_filetypes_blacklist=['fugitive', 'index', 'diff', 'gitcommit', 'unite', 'qf', 'help']
:autocmd FileType fugitive,git DisableWhitespace

" Nerdtree Settings

" function! Is_git_dir()
"     return b:Fugitive.FugitiveIsGitDir(getcwd())
" endfunction

augroup NERDTree
    " quit Vim if NERDTree is the only remaining window
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    """""Sync NERDTree with Vim
    " Check if NERDTree is open or active
    function! IsNERDTreeOpen()
      return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
    endfunction

    " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
    " file, and we're not in vimdiff
    function! SyncTree()
      if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
      endif
    endfunction

    " Highlight currently open buffer in NERDTree
    " autocmd BufEnter * call SyncTree()
augroup END

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Rainbow parenthesis
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Disable rainbow paren for cmake files
let g:rainbow_conf = {
\   'separately': {
\       'cmake': 0,
\   }
\}

"NVIM_GDB
" We're going to define single-letter keymaps, so don't try to define them
" in the terminal window.  The debugger CLI should continue accepting text commands.
" function! NvimGdbNoTKeymaps()
"   tnoremap <silent> <buffer> <esc> <c-\><c-n>
" endfunction

" let g:nvimgdb_config_override = {
"   \ 'key_next': 'n',
"   \ 'key_step': 's',
"   \ 'key_finish': 'f',
"   \ 'key_continue': 'c',
"   \ 'key_until': 'u',
"   \ 'key_breakpoint': 'b',
"   \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
"   \ }

"Rainbow Parenthesis
" let g:rainbow_active = 1

" Gutentag
" let g:gutentags_trace = 1

"Airline Settings
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" Easymotion
nmap <Leader><Leader> <Plug>(easymotion-prefix)

"; Jump in buffer
nmap <Leader>jf <Plug>(easymotion-overwin-f)
nmap <Leader>jt <Plug>(easymotion-bd-t)
nmap <Leader>jw <Plug>(easymotion-overwin-w)
nmap <Leader>jW <Plug>(easymotion-bd-W)
nmap <Leader>je <Plug>(easymotion-bd-e)
nmap <Leader>jE <Plug>(easymotion-bd-E)
nmap <Leader>jl <Plug>(easymotion-overwin-line)
nmap <Leader>ja <Plug>(easymotion-jumptoanywhere)

" Jump across windows
" nmap <Leader>wf <Plug>(easymotion-overwin-f)
" nmap <Leader>ww <Plug>(easymotion-overwin-w)
" nmap <Leader>wl <Plug>(easymotion-overwin-line)

" Jump in line
" nmap <Leader>lf <Plug>(easymotion-bd-fl)
" nmap <Leader>lt <Plug>(easymotion-bd-tl)
" nmap <Leader>lw <Plug>(easymotion-bd-wl)
" nmap <Leader>le <Plug>(easymotion-bd-el)
" nmap <Leader>la <Plug>(easymotion-lineanywhere)


map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

" I don't like the green highlighting
hi link EasyMotionMoveHL Search

" Typescript tags for Tagbar
let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" TODO: Use different taging program for TypeScript
" let g:fzf_tags_command = 'tstags -f'

" Open vim help in vertical split
augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" Remap semicolon to colon. Just use Easymotion for character traversal
nnoremap ; :
nnoremap : ;

" Swap single quote and backtick
nnoremap ' `
nnoremap ` '
" shiftwidth determines the amount of whitespace to insert or remove when
" using the indentation commands in normal mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
