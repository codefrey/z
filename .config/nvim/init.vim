" zacanger's init.vim
" for nvim | neovim.io

call plug#begin('~/.local/share/nvim/plugged')

if has('vim_starting')
  set nocompatible " Be iMproved
endif

Plug 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
Plug 'flowtype/vim-flow', {
      \ 'autoload': {
      \     'filetypes': 'javascript'
      \ }}

Plug 'fatih/vim-go'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'sheerun/vim-polyglot'
Plug 'FooSoft/vim-argwrap'
Plug 'KabbAmine/lazyList.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite.vim'
Plug 'airblade/vim-accent'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'bitc/vim-hdevtools'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ajh17/VimCompletesMe'
" Plug 'ervandew/supertab'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'frigoeu/psc-ide-vim'
Plug 'goldfeld/vim-seek'
Plug 'gorodinskiy/vim-coloresque'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'isomoar/vim-css-to-inline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jiangmiao/auto-pairs'
Plug 'jparise/vim-graphql'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-peekaboo'
Plug 'kien/tabman.vim'
Plug 'krisajenkins/vim-pipe'
Plug 'mattn/emoji-vim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-node'
Plug 'neovim/node-host'
Plug 'othree/csscomplete.vim'
Plug 'plasticboy/vim-markdown'
Plug 'retorillo/istanbul.vim'
Plug 'rhysd/vim-wasm'
Plug 'scrooloose/nerdcommenter'
Plug 'sgur/vim-editorconfig'
Plug 'snoe/nvim-parinfer.js'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-jp/vital.vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/paredit.vim'
Plug 'vim-scripts/syntaxcomplete'
Plug 'vim-utils/vim-husk'
Plug 'vim-utils/vim-man'
Plug 'vim-utils/vim-troll-stopper'
Plug 'w0rp/ale'
Plug 'junegunn/seoul256.vim'
Plug 'OrangeT/vim-csharp'
Plug 'junegunn/vim-slash'

call plug#end()

" Required:
filetype plugin indent on

"" Basic Setup

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab
set autoindent

" Map leader to ,
let mapleader="\<Space>"

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
highlight clear Search
highlight       Search    ctermfg=White
" Clean search (highlight)
nnoremap <silent> <leader>/ :noh<cr>
" blink the line containing the match
fu! HLNext (blinktime)
  set invcursorline
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 250) . 'm'
  set invcursorline
  redraw
endfu
" highlight matches when jumping to next
" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>

" Encoding
set bomb
set binary

" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/bash

"" Visual Settings
syntax on
set ruler
set number

let no_buffers_menu=1

set mousemodel=popup
set t_Co=256
set cursorline
set guioptions=egmrti
set gfn=Monospace\ 10

if &term =~ '256color'
  set t_ut=256
endif

" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

" Map cursor for insert mode
if &term =~ "xterm\\|rxvt"
  let &t_SI .= "\<Esc>[5 q"
  let &t_EI .= "\<Esc>[0 q"
endif

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" vim-airline
let g:airline_theme = 'seoul256'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" abbrs
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev E e
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev X x
cnoreabbrev stu sort u
cnoreabbrev Stu sort u
cnoreabbrev Set set
cnoreabbrev Bd bd
inoreabbr lmbd λ
inoreabbr frll ∀
inoreabbr midfing 🖕

" wild
set wildmenu
set path+=**
set wildmode=list:longest,list:full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set wildignore+=*.o,*.obj,.git,*.rbc,__pycache__,node_modules/**,bower_components/**
set wildignore+=solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep,.gems/**
set wildignore+=*.ico,*.ICO,backup/**,*.sql,*.dump,*.tmp,*.min.js,Gemfile.lock
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=vendor/**,coverage/**,tmp/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

if has("nvim")
  " Make escape work in the Neovim terminal.
  tnoremap <Esc> <C-\><C-n>

  " Make navigation into and out of Neovim terminal splits nicer.
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l

  " I like relative numbering when in normal mode.
  autocmd TermOpen * setlocal conceallevel=0 colorcolumn=0 relativenumber

  " Prefer Neovim terminal insert mode to normal mode.
  autocmd BufEnter term://* startinsert
endif

if !exists('*s:setupWrapping')
  fu s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfu
endif

"" aus
" syntax highlight syncing from start
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END

" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

au BufRead,BufNewFile *.md setlocal textwidth=80
au FileType racket set et

autocmd FileType css set omnifunc=csscomplete#CompleteCSS noci

set autoread

"" mappings
nnoremap > >>
nnoremap < <<

" select most recently edited text
nnoremap vp `[v`]

" split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" shows current hi group
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Show syntax highlighting groups for word under cursor
nmap <F7> :call <SID>SynStack()<CR>
fu! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfu

" Disable visualbell
set noeb vb t_vb=

"" system clipboard
set clipboard^=unnamed,unnamedplus

noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
        \ formatoptions+=croq softtabstop=4 smartindent
        \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'jsx': ['eslint']
      \}
let b:ale_javascript_eslint_options = "--rule 'prettier/prettier: 0'"

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

let g:javascript_enable_domhtmlcss = 1

inoremap <Esc> <Esc>`^

autocmd User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif

cnoremap sudow w !sudo tee & >/dev/null
cnoremap reload so $HOME/.config/nvim/init.vim

let g:seoul256_background = 233
colo seoul256

let g:netrw_banner=0
let g:netrw_browser_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_gx="<cWORD>"

let g:SuperTabDefaultCompletionType = "<c-n>"

" greplace
let g:grep_cmd_opts = '--line-numbers --noheading'
set grepprg=ag
set grepformat=%f:%l:%c:%m

" commit message thing
autocmd Filetype gitcommit setlocal spell textwidth=80

" clear screen between shell commands
nnoremap :! :!clear;
vnoremap :! :!clear;

" yank whole file
nnoremap :yal :%y+

" fucking windows
fu! FixEndings()
  :%s///g
endfu

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" insert current line number in normal mode with f1
nnoremap <F1> :execute "normal! i" . ( line(".") )<cr>
nnoremap <F2> :execute "normal! i console.log(" . ( line(".") ) . ")"<cr>

" keep Y consistent
nnoremap Y y$

" buftabs
let g:buftabs_enabled = 1
let g:buftabs_in_statusline = 1
let g:buftabs_in_cmdline = 0
let g:buftabs_only_basename = 1
let g:buftabs_active_highlight_group = "Visual"
let g:buftabs_inactive_highlight_group = ""
let g:buftabs_statusline_highlight_group = ""
let g:buftabs_marker_start = "["
let g:buftabs_marker_end = "]"
let g:buftabs_separator = "-"
let g:buftabs_marker_modified = "!"
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

" vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = [
      \'bash=Shell',
      \'console=Shell',
      \'css=CSS',
      \'html=HTML',
      \'javascript=JavaScript',
      \'js=JavaScript',
      \'jsx=JSX',
      \'less=CSS',
      \'sass=CSS',
      \'scss=CSS',
      \'sh=Shell'
      \]
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

" vim-gitgutter
let g:gitgutter_max_signs = 700

" let g:jsx_ext_required = 0

fu! SortLines() range
  execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
  execute a:firstline . "," . a:lastline . 'sort n'
  execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfu

" because of docker + mac + webpack (or whatever)...
let g:backupcopy = 'yes'

" flow
let local_flow = finddir('node_modules', '.;') . '/.bin/flow'
if matchstr(local_flow, "^\/\\w") == ''
  let local_flow= getcwd() . "/" . local_flow
endif
if executable(local_flow)
  let g:flow#flowpath = local_flow
endif
let g:flow#enable = 0
" let g:javascript_plugin_flow = 1

let g:polyglot_disabled = ['css', 'js', 'jsx', 'javascript', 'javascript.jsx']
let g:csstoinline_wrap_pixels = 1

" javascript-libraries-syntax config
let g:used_javascript_libs = 'jquery,underscore,react,jasmine,ramda,tape'

" match % on more stuff
if !exists('g:loaded_matchit')
  runtime macros/matchit.vim
endif

" better ctrl-l
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" edit macros
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" show tabs
set list lcs=tab:\|\
" except in go, because gofmt says so
autocmd FileType go set nolist

" break line on words
set linebreak

" fix where new splits show up
set splitbelow
set splitright

" relative dirs
set autochdir

" use relative numbers in most modes
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let g:paredit_mode=0
let g:paredit_leader="\<Space>"

let g:parinfer_mode="off"

" use <F8> to go to next conflict marker
map <silent> <F8> /^\(<\{7\}\\|>\{7\}\\|=\{7\}\\|\|\{7\}\)\( \\|$\)<cr>

let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

set mouse=a

" pixie
au BufNewFile,BufRead *.pxi set ft=clojure

" highlight the 121st column of wide lines
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%121v', 100)

" see betterdigraphs.vim
inoremap <expr>  <C-K>   BDG_GetDigraph()

" vimpipe stuff
let g:vimpipe_silent = 1
let g:vimpipe_close_map="<leader>,"
let g:vimpipe_invoke_map="<leader>n"
autocmd FileType javascript let b:vimpipe_command="node -p"
autocmd FileType clojure,clojurescript let b:vimpipe_command="lumo -e"
autocmd FileType python let b:vimpipe_command="python -c"

" post to ix.io -- needs ix.sh
nnoremap <leader>i :w !ix.sh<CR>

" syntaxcomplete
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

nnoremap <leader>w :w<CR>

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDCommentEmptyLines=1

" argwrap
let g:argwrap_padded_braces = '[{'
let g:argwrap_tail_comma_braces = '[{'
nnoremap <silent> <leader>a :ArgWrap<CR>

" jest snapshot files
au BufRead,BufNewFile *.js.snap set ft=javascript

" echo GetFileSize()
fu! GetFileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "0"
    endif
    if bytes < 1024
        return bytes
    else
        return (bytes / 1024) . "K"
    endif
endfu

" match angle brackest
set matchpairs+=<:>

" preserve flags for pattern when repeating substitution with &
nnoremap <silent> & :<C-U>&&<CR>
vnoremap <silent> & :<C-U>&&<CR>

" don't redraw the screen when executing macros, etc
set lazyredraw

if has('virtualedit')
  set virtualedit+=block
endif

set nojoinspaces
set display=lastline

" node native addons
au BufNewFile,BufRead *.gyp set ft=json
