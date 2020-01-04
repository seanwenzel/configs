set nocompatible              " be iMproved, required

" Leader
let mapleader = "\<Space>"

" Local Directories
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set colorcolumn=81 " Draw column after 80 chars
set cursorline " Highlight current line
set mouse=a
set nohlsearch
set noincsearch
set shiftwidth=4
set softtabstop=4
set showcmd
set visualbell
set nu

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter' " Show git diff in gutter
Plug 'airblade/vim-rooter' "Helps FZF behave as expected (e.g. project-switching)
Plug 'christoomey/vim-tmux-navigator' " Navigate between vim and tmux panes
Plug 'easymotion/vim-easymotion' " Navigation
Plug 'edkolev/tmuxline.vim' " Tmux line matches vim airline
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'wellle/targets.vim'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'keith/investigate.vim'
Plug 'patstockwell/vim-monokai-tasty'
call plug#end()            " required

" Syntax highlighting
syntax on
colorscheme vim-monokai-tasty

au BufRead,BufNewFile *.md setlocal textwidth=80

" Pane Navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" FZF
command! All execute 'Files' '~/'

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

" Better Whitespace Settings
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:better_whitespace_filetypes_blacklist=['fugitive', 'index', 'diff', 'gitcommit', 'unite', 'qf', 'help']
:autocmd FileType fugitive,git DisableWhitespace

augroup NERDTree
    " quit Vim if NERDTree is the only remaining window
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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

