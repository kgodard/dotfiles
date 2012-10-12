set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'ZoomWin'
" Bundle 'wincent/Command-T'
Bundle 'kien/ctrlp.vim'
Bundle 'edsono/vim-matchit'
Bundle 'fholgado/minibufexpl.vim'
" Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'twe4ked/vim-peepopen'

" This fork is required due to remapping ; to :
Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'

" UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
Bundle 'sjl/gundo.vim'

" Terminal
Bundle "rosenfeld/conque-term"

" Colors
Bundle 'tomasr/molokai'
Bundle 'mutewinter/ir_black_mod'

" Commands
" Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/tComment'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'godlygeek/tabular'
Bundle 'sickill/vim-pasta'
Bundle 'mileszs/ack.vim'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'milkypostman/vim-togglelist'

" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'

" Language Additions
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'tpope/vim-rails'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'leshill/vim-json'
Bundle 'mutewinter/nginx.vim'
Bundle 'tpope/vim-rake'
Bundle 'timcharper/textile.vim'
Bundle 'tpope/vim-endwise'
Bundle 'thisivan/vim-ruby-matchit'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-markdown'
Bundle 'jgoulah/cocoa.vim'
if has('ruby')
  Bundle 'matthias-guenther/hammer.vim'
endif

Bundle 'css3'
Bundle 'othree/html5-syntax.vim'
Bundle 'thomd/vim-jasmine'

" Testing
Bundle 'skalnik/vim-vroom'

"Snippets
Bundle "garbas/vim-snipmate"
Bundle "cschneid/snipmate-snippets"

" Text Objects
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'argtextobj.vim'

" Services
Bundle 'mattn/gist-vim'

" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" map a leader
let mapleader = ","

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h14:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar

  " Set height and width on Windows
  set lines=60
  set columns=120

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim
  " set guifont=Monaco:h16
  set guifont=Menlo:h16

  " Hide Toolbar in MacVim
  if has("gui_running")
    " Hide scrollbars and toolbars
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

" ----------------------------------------
" Color Scheme
" ----------------------------------------

if has('unix') && !has('gui_macvim')
  if $TERM == 'xterm-256color'
    " Neato, 256 color terminal. We can use ir_black_mod
    colorscheme ir_black_mod
  else
    " We can't use ir_black_mod :(
    let g:CSApprox_verbose_level=0
    colorscheme ir_black_mod
  endif
else
  " We're good if not on unix or in MacVim
  colorscheme ir_black_mod
endif

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

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
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=1024       " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
" set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=350     " Time to wait for a command (after leader for example)
set foldlevelstart=999 " Remove folds
set formatoptions=crql " autowrap comments; autoinsert comment char on newline; gq formats comments; don't autoformat long lines

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
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache

" set tags file location
set tags=./tags;

" regenerate ctags
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>
map <Leader>ra :!ctags --extra=+f --exclude=.git --exclude=log -R ../*<CR><CR>

" go to symbol!
map <Leader>d :TagbarToggle <cr>

" use Ack instead of grep
set grepprg=ack

" ctrl-n, ctrl-p
map <C-n> :cn <cr>
map <C-p> :cp <cr>

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide " Hide mouse after chars typed
set mouse=a   " Mouse in all modes



" TODO: Move somewhere - Better complete options to speed it up
set complete=.,w,b,u,U,b,]

" ----------------------------------------
" Bindings
" ----------------------------------------
" Fixes common typos
" command W w
" command Q q

" This allows semi-colon for colon commands
" nnoremap ; :

map <F1> <Esc>
imap <F1> <Esc>

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k

" TODO: What's this do? -- Make line completion easier
imap <C-l> <C-x><C-l>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" map double j to escape to exit insert mode
inoremap jj <Esc>

" map for hashrocket
imap <C-e> <C-R>=expand(' => ')<CR>

" map for ruby interpolation brackets
inoremap kk #{}<Left>

" html line break
imap <C-Enter> <br/>

" previous and next buffers
map [ :bp<CR>
map ] :bn<CR>

" delete current buffer (the :e is to reload the file and restore syntax color (minibufexp bug)
map <leader>m :bd <cr> :e <cr>

" close all buffers
nmap <leader><leader>q :bufdo bdelete <cr>

" ---------------
" Leader Commands
" ---------------

" leader s saving
map <leader>s :w <cr>

" edit another file in the same directory as current file
map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>

",v brings up my .vimrc
",r reloads it -- making all changes active (have to save first)
map <leader>v :e ~/.vimrc<CR>
map <silent> <leader>r :so ~/.vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Setting toggles
nmap <leader>sn :set number!<CR>
nmap <leader>ss :set spell!<CR>

" Hide highlighted search terms
nnoremap <silent> <c-space> :nohl<CR>

" Quick project access
nmap <leader>ap :cd ~/Development/intellisource_clean/apollo<CR>

" Edit vimrc with \v
" nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" Window Splitting
nmap <silent> <leader>sh :split<CR>
nmap <silent> <leader>sv :vsplit<CR>

" Window Movement
" nmap , <C-w><C-w>

" Window Resizing
nmap - <C-w>-
nmap = <C-w>+
nmap _ <C-w><
nmap + <C-w>>

" Tab movement
" nmap ; gt
" nmap <TAB>; gT

" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif


" ----------------------------------------
" Make Top and Bottom Lines
" ----------------------------------------
nnoremap <leader>== yyPv$r=jyypv$r=
nnoremap <leader>-- yyPv$r-jyypv$r-
nnoremap <leader>## yyPv$r#jyypv$r#
nnoremap <leader>** yyPv$r*jyypv$r*
nnoremap <leader>=  yypv$r=
nnoremap <leader>-  yypv$r-
nnoremap <leader>^  yypv$r^
nnoremap <leader>"  yypv$r"

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------
" let NERDSpaceDelims = 1 " space between comment and code

" ---------------
" TComment
" ---------------
map <leader>cc :TComment <cr>
map <C-m> :TComment <cr>

" ---------------
" ConqueTerm
" ---------------
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 0

" ---------------
" Gist
" ---------------
" let g:gist_clip_command = 'pbcopy'
" let g:gist_show_privates = 1
" let g:gist_private = 1
" let g:github_token = '821c58ada4485a1e34ea7adca846db91'

" ---------------
" Snipmate
" ---------------
let g:snips_trigger_key='<c-enter>'

" ---------------
" IndentGuides
" ---------------
autocmd VimEnter * IndentGuidesDisable
nmap <silent> <leader>si :IndentGuidesToggle<CR>
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 0


" ---------------
" Gundo
" ---------------
nmap <silent> <leader>u :GundoToggle<CR>

" ---------------
" SuperTab
" ---------------
" Set these up for cross-buffer completion (something Neocachecompl has a hard time with)
let g:SuperTabDefaultCompletionType="<c-x><c-n>"
let g:SuperTabContextDefaultCompletionType="<c-x><c-n>"

" ---------------
" Neocachecompl
" ---------------
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1 "Select the first entry automatically
let g:neocomplcache_enable_cursor_hold_i=1
let g:neocomplcache_cursor_hold_i_time=300
let g:neocomplcache_auto_completion_start_length=3

" Tab / Shift-Tab to cycle completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" ---------------
" Syntastic
" ---------------
" let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_disabled_filetypes=['scss'] " Disable .sh on Windows

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

" ---------------
" NERDTree
" ---------------
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=5

if has('unix') && !has('gui_macvim')
  if $TERM == 'xterm-256color'
    " Make the guides smaller since they will be crazy visible in 256color mode
    let g:indent_guides_guide_size=1
  else
    " Turn off the guides when 256color mode isn't available
    let g:indent_guides_enable_on_vim_startup=0
  endif
endif

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" SpeedDating
" ---------------
" let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nmap <silent><leader>dm <Plug>SpeedDatingDown
nmap <silent><leader>dp <Plug>SpeedDatingUp
nmap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ---------------
" Tabular
" ---------------
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t: :Tabularize /:\zs<CR>
vmap <leader>t: :Tabularize /:\zs<CR>
nmap <leader>t, :Tabularize /,\zs<CR>
vmap <leader>t, :Tabularize /,\zs<CR>
nmap <leader>t> :Tabularize /=><CR>
vmap <leader>t> :Tabularize /=><CR>
vmap <leader>ts :Tabularize / /l0<CR>
nmap <leader>ts :Tabularize / /l0<CR>

" ---------------
" Fugitive
" ---------------
nmap <leader>gc :Gcommit<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <leader>gu :Git pull<CR>
nmap <leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <leader>gD :wincmd h<CR>:q<CR>

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nmap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" Command T and ctrlp.vim
" ---------------
" let g:CommandTMaxHeight = 10

" if has('ruby')
  " We've got Ruby, use Command T

  " Leader Commands
  " nnoremap <leader>t :CommandT<CR>
  " nnoremap <silent><leader>b :CommandTBuffer<CR>
  "nnoremap <leader>u :CommandT %%<CR>
" else
  " Fallback on ctrlp.vim if Ruby for Command T not available

  " Leader Commands
  " nnoremap <leader>t :CtrlPRoot<CR>
" endif

" ctrlp.vim Options we always use
let g:ctrlp_max_height = 100

" Mapping from ctrlp we always use
if has('gui_macvim')
  nnoremap <silent><D-u> :CtrlPCurFile<CR>
  nnoremap <silent><D-y> :CtrlPMRUFiles<CR>
else
  nnoremap <silent><M-u> :CtrlPCurFile<CR>
  nnoremap <silent><M-y> :CtrlPMRUFiles<CR>
end

" mini buffer explorer settings
" let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplModSelTarget = 1

"" Also map leader commands
"nnoremap <leader>u :CtrlPCurFile<CR>
"nnoremap <leader>y :CtrlPMRUFiles<CR>

" ---------------
" Vundle
" TODO: Do I want bindings for this?
" ---------------
" nmap <leader>bi :BundleInstall<CR>
" nmap <leader>bu :BundleInstall!<CR> " Because this also updates
" nmap <leader>bc :BundleClean<CR>

" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Align tables
" tpope: https://gist.github.com/287147
" ---------------

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" ---------------
" OpenURL
" ---------------

if has('ruby')
ruby << EOF
  require 'open-uri'
  require 'openssl'
  
  def extract_url(url)
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]\{\};:'".,<>?«»“”‘’]))}

    url.match(re).to_s
  end

  def open_url
    line = VIM::Buffer.current.line

    if url = extract_url(line)
      if RUBY_PLATFORM.downcase =~ /(win|mingw)(32|64)/
        `start cmd /c chrome #{url}`
        VIM::message("Opened #{url}")
      else
        `open #{url}`
        VIM::message("Opened #{url}")
      end
    else
      VIM::message("No URL found on this line.")
    end

  end

  # Returns the contents of the <title> tag of a given page
  def fetch_title(url)
    if RUBY_VERSION < '1.9'
      open(url).read.match(/<title>(.*?)<\/title>?/i)[1]
    else
      open(url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read.match(/<title>(.*?)<\/title>?/i)[1]
    end
  end

  # Paste the title and url for the url on the clipboard in markdown format: [Title](url)
  # Note: Clobbers p register
  def paste_url_and_title
    clipboard = VIM::evaluate('@+')
    url = extract_url(clipboard)
    if url and url.strip != ""
      puts "Fetching title"
      title = fetch_title(url)
      VIM::command "let @p = '[#{title}](#{url})'"
      VIM::command 'normal! "pp'
    else
      VIM::message("Clipboard does not contain URL: '#{clipboard[1..10]}'...")
    end
  end
EOF

" Open a URL
if !exists("*OpenURL")
  function! OpenURL()
    :ruby open_url
  endfunction
endif

command! OpenUrl call OpenURL()
nnoremap <leader>fo :call OpenURL()<CR>

" ---------------
" Paste link with Title
" ---------------

" Open a URL
if !exists("*PasteURLTitle")
  function! PasteURLTitle()
    :ruby paste_url_and_title
  endfunction
endif

command! PasteURLTitle call PasteURLTitle()
map <leader>pt :PasteURLTitle<CR>

endif " endif has('ruby')

" ---------------
" Fix Trailing White Space
" ---------------
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>


" ----------------------------------------
" External Apps
" ----------------------------------------

" ---------------
" Pretty XML
" ---------------
vmap <leader>x :!xmllint --format --recover --nowarning -<CR>


" ---------------
" Text Formatting
" ---------------
set formatprg=par\ -w80
map <A-q> {v}!par -jw80<CR>
vmap <A-q> !par -jw80<CR>


" ---------------
" Move Lines
" ---------------
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
