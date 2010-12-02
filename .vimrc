filetype on  " Automatically detect file types.

call pathogen#runtime_append_all_bundles()

set nocompatible  " We don't want vi compatibility.
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!
 
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
let mapleader = "\\"

vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
map <Leader>cc :!cucumber %<CR>
map <Leader>co :TComment<CR>
map <Leader>d odebugger<cr>puts 'debugger'<esc>:w<cr>
map <Leader>ga :Gcommit -m -a ""<LEFT>
map <Leader>gc :Gcommit -m ""<LEFT>
map <Leader>gs :Gstatus<CR>
map <Leader>f :sp spec/factories.rb<CR>
map <Leader>fix :cnoremap % %<CR>
map <Leader>fa :sp test/factories.rb<CR>
map <Leader>h :FuzzyFinderTextMate<CR>
map <Leader>l :!ruby <C-r>% \| less<CR>
map <Leader>m :Rmodel 
map <Leader>v :Rview 
map <Leader>c :Rcontroller 
map <Leader>n ,w,t
map <Leader>o ?def <CR>:nohl<CR>w"zy$:!ruby -I"test" <C-r>% -n <C-r>z<CR>
" map <Leader>p :set paste<CR>i
map <Leader>rb :Rake!<CR>
map <Leader>rf :FuzzyFinderTextMateRefreshFiles<CR>
map <Leader>rw :%s/\s\+$//
map <Leader>sc :sp db/schema.rb<cr>
map <Leader>sm :RSmodel 
map <Leader>su :RSunittest 
map <Leader>sv :RSview 
map <Leader>t :!ruby -I"test" -I"spec" %<CR>
map <Leader>u :Runittest 
map <Leader>vc :RVcontroller 
map <Leader>vf :RVfunctional 
map <Leader>vi :tabe ~/.vimrc<CR>
map <Leader>vu :RVunittest 
map <Leader>vm :RVmodel 
map <Leader>vv :RVview 
map <Leader>w <C-w>w

map <C-h> :nohl<CR>
imap <C-l> <Space>=><Space>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
map <C-n> :cn<CR>
map <C-p> :cp<CR>

nmap <silent> <c-t> :NERDTreeToggle<CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
" map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=500  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoread
set autoindent
set smarttab
set expandtab
set showcmd " display incomplete commands
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" set the tag file search order
set tags=./tags;

" use ack instead of grep
set grepprg=ack

" colorscheme vividchalk  " Uncomment this to set a default theme
" colorscheme railscasts
