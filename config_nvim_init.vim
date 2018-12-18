let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" all the colors!
set termguicolors

packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('vim-scripts/bufexplorer.zip')
call minpac#add('scrooloose/nerdtree')
call minpac#add('scrooloose/syntastic')
call minpac#add('flazz/vim-colorschemes')
call minpac#add('twe4ked/vim-colorscheme-switcher')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-commentary')
call minpac#add('godlygeek/tabular')
call minpac#add('danro/rename.vim')
call minpac#add('iCyMind/NeoSolarized')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('kshenoy/vim-signature')
call minpac#add('vim-airline/vim-airline')
call minpac#add('Raimondi/delimitMate')
call minpac#add('scrooloose/syntastic')
call minpac#add('ervandew/supertab')
call minpac#add('gregsexton/MatchTag')
" This requires python 3
call minpac#add('Shougo/deoplete.nvim')

" Languages
call minpac#add('aklt/plantuml-syntax')
call minpac#add('tyru/open-browser.vim')
call minpac#add('weirongxu/plantuml-previewer.vim')
call minpac#add('elixir-lang/vim-elixir')
call minpac#add('keith/swift.vim')
call minpac#add('ElmCast/elm-vim')
call minpac#add('nono/vim-handlebars')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-haml')
call minpac#add('pangloss/vim-javascript')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('itspriddle/vim-jquery')
call minpac#add('tpope/vim-rails')
call minpac#add('leshill/vim-json')
call minpac#add('mutewinter/nginx.vim')
call minpac#add('timcharper/textile.vim')
call minpac#add('tpope/vim-endwise')
call minpac#add('thisivan/vim-ruby-matchit')
call minpac#add('tpope/vim-cucumber')
call minpac#add('tpope/vim-markdown')
call minpac#add('jgoulah/cocoa.vim')
call minpac#add('ekalinin/Dockerfile.vim')
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('othree/html5-syntax.vim')
call minpac#add('othree/javascript-libraries-syntax.vim')
call minpac#add('thomd/vim-jasmine')
call minpac#add('lunaru/vim-less')
call minpac#add('othree/yajs.vim')
call minpac#add('othree/es.next.syntax.vim')
call minpac#add('tpope/vim-jdaddy')
if has('ruby')
  call minpac#add('matthias-guenther/hammer.vim')
endif

" Navigation
call minpac#add('emilsoman/spec-outline.vim')
call minpac#add('kien/ctrlp.vim')
call minpac#add('vim-scripts/matchit.zip')
call minpac#add('sandeepcr529/Buffet.vim')
call minpac#add('majutsushi/tagbar')
call minpac#add('lukaszkorecki/coffeetags')

" Search
call minpac#add('mhinz/vim-grepper')
call minpac#add('junegunn/fzf')

" enable deoplete
let g:deoplete#enable_at_startup = 1

" map a leader
let mapleader = ","

" terminal mode switching
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

" Grepper
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep']

" leader-g to grep with ripgrep
nnoremap <Leader>g :Grepper -tool rg<CR>

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" FZF
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader><Leader>f :FZF ../common<CR>

" ctrlp.vim Options we always use
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader><leader>p :CtrlP ../common<CR>
let g:ctrlp_max_height = 100
let g:ctrlp_working_path_mode = 'r'

let g:gitgutter_override_sign_column_highlight = 0
filetype plugin indent on  " Automatically detect file types.

" leader s saving
map <leader>s :w <cr>

" show spec outline!
map <silent> <Leader>ss :SpecOutlineToggle<CR>

" Tagbar - browse by methods in file
nnoremap <Leader>d :TagbarToggle<CR>

" Hide highlighted search terms
nnoremap <silent> <c-space> :nohl<CR>

" ---------------
" UI
" ---------------
set ruler         " Ruler on
set number        " Line numbers on
set nowrap          " Line wrapping on
set cursorline    " Whole line higlighted
set laststatus=2  " Always show the statusline
set cmdheight=1   " Two lines for command line.
set list          " Show trailing spaces and tabs
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ "What to show
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" ---------------
" Behaviors
" ---------------
set clipboard+=unnamed " Yanks go on clipboard instead.

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=2  " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab    " hitting <tab> inserts two spaces

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" quickfix close
map cc :ccl<CR>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" map double j to escape to exit insert mode
inoremap jj <Esc>

" map for hashrocket
imap <C-e> <C-R>=expand(' => ')<CR>

" map for ruby interpolation brackets
inoremap kk #{}<Left>

" jump to end of line and keep editing
inoremap ;; <Esc> A

" display current colorscheme
nmap <leader><leader>c :colorscheme <cr>

" Window Movement
nmap <leader>w :winc w<CR>

" Window Resizing
nmap - <C-w>-
nmap = <C-w>+
nmap _ <C-w><
nmap + <C-w>>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" launch terminal in vsplit
nnoremap <leader><leader>t :vs \| te<CR>source $HOME/.bash_profile<CR>

" ------------------
" Scrolling Settings
" ------------------
set scrolloff=12 " Keep 12 lines below and above the cursor

" ---------------
" Fix Trailing White Space
" ---------------
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e

" Buffet
map <leader>bf :Bufferlist<CR>

" edit another file in the same directory as current file
map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>

",v brings up my .vimrc
map <leader>v :e ~/.dotfiles/files/vimrc<CR>

",n brings up this file
map <leader>n :e ~/.config/nvim/init.vim<CR>

" ---------------
" Color Scheme
" ---------------
" ** set random colorscheme **
" let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
" let list = map(paths, 'fnamemodify(v:val, ":t:r")')
" let schemes=sort(filter(copy(list), 'index(list, v:val, v:key+1)==-1'))
" let seconds = str2nr(strftime('%S'))
" execute 'colorscheme '.schemes[seconds%11]
" redraw
set background=dark
colorscheme NeoSolarized
" toggle between light and dark with F6
map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" call togglebg#map("<F6>")

augroup vimrc_autocmds
  au VimEnter * execute "SetColors all"
  au VimEnter * execute "echo g:colors_name"
  " These commands auto-highlight all text past 73 columns
  " au BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  " au BufEnter * match OverLength /\%74v.*/
augroup END
