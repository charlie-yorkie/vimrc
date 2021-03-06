""---------------------------------------------------------
""  Vundle, the plug-in manager for Vim
""---------------------------------------------------------
"" Set up Vundle
"" ------------------------------------
"" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" $ vim +PluginInstall +qall
"" ------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.

"" ------------------------------------
"" Plugins from github
Plugin 'moll/vim-bbye'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'majutsushi/tagbar'
Plugin 'chazy/cscope_maps'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'MattesGroeger/vim-bookmarks'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"" ------------------------------------

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
"" filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line


""---------------------------------------------------------
""  Encoding
""---------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1

""---------------------------------------------------------
""  Color Scheme
""---------------------------------------------------------
set t_Co=256
syntax on
syntax enable
colorscheme monokai

""---------------------------------------------------------
""  User Interface
""---------------------------------------------------------
set hidden
set number              " show line numbers
set showcmd             " show command in bottom bar
set mouse=nv            " enable mouse use in all modes
set wildmenu            " visual autocomplete for command menu
set cursorline          " highlight current line
set laststatus=2        " always have a status line
" :%!xxd                " hex mode
" :%!xxd -r             " hex mode reverted

""---------------------------------------------------------
""  Indentation
""---------------------------------------------------------
set tabstop=4           " 4 space tab
" set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on      " load filetype-specific indent files
"filetype plugin on
set autoindent          " autoindent
set pastetoggle=<F9>    " toggle auto-indenting for code paste

"" >>   Indent line by shiftwidth spaces
"" <<   De-indent line by shiftwidth spaces
"" 5>>  Indent 5 lines
"" 5==  Re-indent 5 lines

"" >%   Increase indent of a braced or bracketed block (place cursor on brace first)
"" =%   Reindent a braced or bracketed block (cursor on brace)
"" <%   Decrease indent of a braced or bracketed block (cursor on brace)
"" ]p   Paste text, aligning indentation with surroundings

"" =i{  Re-indent the 'inner block', i.e. the contents of the block
"" =a{  Re-indent 'a block', i.e. block and containing braces
"" =2a{ Re-indent '2 blocks', i.e. this block and containing block

"" >i{  Increase inner block indent
"" <i{  Decrease inner block indent

""---------------------------------------------------------
""  Editing 
""---------------------------------------------------------
"" [normal mode]
"" yank the visually select to clipboard
vnoremap <C-C> "+y
"" copy then paste multiple times
vnoremap p pgvy

"" [insert mode]
"" <C-H> : Backspace
"" <C-W> : Delete a word
"" <C-N> : Keyword completion
"" <C-O> : Switches to normal mode for one command
"" <C-R> {0-9a-z"%#*+:.-=} : Insert the contents of a register.

""---------------------------------------------------------
""  Motion
""---------------------------------------------------------
"" [normal mode]
"" <C-E> : Scroll window [count] lines downwards in the buffer.
"" <C-Y> : Scroll window [count] lines upwards in the buffer.

"" [insert mode]
"" move cursor to the end of line
inoremap <C-E> <C-O>$
"" move cursor to the head of line
inoremap <C-A> <C-O>0
"" move cursor one character left
inoremap <C-K> <C-O>h
"" move cursor one character right
inoremap <C-L> <C-O>l

""---------------------------------------------------------
""  Searching and Replace
""---------------------------------------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" toggle highlighting on/off, and show current value
noremap <F12> :set hlsearch! hlsearch?<CR>

"" search the selected text in the virtual mode
vnoremap <C-F>  y/<C-R>"<CR>
"" replace the selected text in the virtual mode
vnoremap <C-R> "hy:%s/<C-r>h//gc<left><left><left>

""---------------------------------------------------------
""  Folding
""---------------------------------------------------------
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/closes folds
set foldmethod=syntax
" set foldmethod=indent   " fold based on indent level

""---------------------------------------------------------
""  Key Mapping
""---------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

nnoremap <leader>w :w<cr>
nnoremap <leader>q :qa<cr>
" nnoremap <C-J> <C-w>j
" nnoremap <C-K> <C-w>k
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l

"" go to the previous buffer
nnoremap <S-H> :bprevious<CR>
"" go to the next buffer
nnoremap <S-L> :bnext<CR>
"" close the current buffer
" nnoremap <leader>x :bdelete<cr>
nnoremap <Leader>x :Bdelete<CR>
"" <C-6> to switch back and forth between two buffers in the same window.
if &diff
	nnoremap ] ]c
	nnoremap [ [c
	nnoremap <C-D> do
endif
""---------------------------------------------------------
"" Plugins
""---------------------------------------------------------
""==== NERDTree ====
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>
"" To close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeMouseMode = 3

""==== NERDCommenter ====
"" Toggles the comment state of the selected line(s).
"" [count]<leader>c<space> |NERDComToggleComment|
"" [count]<leader>cc |NERDComComment|
"" [count]<leader>cu |NERDComUncommentLine|
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

""==== Tagbar ====
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_singleclick = 1
"let g:tagbar_autofocus = 1
"autocmd VimEnter * nested :TagbarOpen

""==== Surround ====
"" to delete, change and add such surroundings in pairs.
"" It's easiest to explain with examples. Press cs{' inside
""     {Hello world!}
"" to change it to
""     'Hello world!'
"" remove the delimiters entirely, press ds'.
""      Hello world!
"" with the cursor on "Hello", press ysiw] (iw is a text object).
""     [Hello] world!

"" An asterisk (*) is used to denote the cursor position.
""   Old text                  Command     New text ~
""   'Hello *world!'           ds'         Hello world!
""   [123+4*56]/2              cs])        (123+456)/2
""   'Look ma, I'm *HTML!'     cs'<q>      <q>Look ma, I'm HTML!</q>
""   if *x>3 {                 ysW(        if ( x>3 ) {
""   my $str = *whee!;         vllllS'     my $str = 'whee!';


""==== CtrlP ====
"" Press <C-p> to run CtrlP
"" Press <C-f> and <C-b> to cycle between modes.
"" Press <C-d> to switch to filename only search instead of full path.
"" Press <C-r> to switch to regexp mode.
nnoremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_match_window = 'results:100'

""==== Syntastic ====
" map <leader>ss :SyntasticCheck<cr>
" map <leader>so :Errors<cr>
" map <leader>sc :lclose<cr>
"" automatically load errors into the location list
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
"" check for errors when a file is loaded into Vim
"let g:syntastic_check_on_open = 1
"" not check errors whenever you save the file
" let g:syntastic_check_on_wq = 0

""==== ctags key mappings ====
"" tag stack
""   g + Left MouseClick = Ctrl + ]
""   g + Right MouseClick = Ctrl + T
"" jump list
""   Ctrl + O : Go to Older cursor position in jump list
""   Ctrl + I : Go to newer cursor position in jump list

""==== cscope key mappings ====
"" <C-\>s   symbol: find all references to the token under cursor
"" <C-\>g   global: find global definition(s) of the token under cursor
"" <C-\>c   calls:  find all calls to the function name under cursor
"" <C-\>t   text:   find all instances of the text under cursor
"" <C-\>e   egrep:  egrep search for the word under cursor
"" <C-\>f   file:   open the filename under cursor
"" <C-\>i   includes: find files that include the filename under cursor
"" <C-\>d   called: find functions that function under cursor calls
"" :cs find t {Pattern}
"" search tags files before cscope databases
set cscopetagorder=1

""==== Vim Airline ====
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_inactive_collapse=0

"" ==== session auto-save ====
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"" ==== Vim Bookmarks ====
"" mm(:BookmarkToggle) :  Add/remove bookmark at current line
"" mn(:BookmarkNext)   :  Jump to next bookmark in buffer
"" mp(:BookmarkPrev)   :  Jump to previous bookmark in buffer
"" ma(:BookmarkShowAll):  Show all bookmarks (toggle)
nnoremap <C-M> :BookmarkNext<CR>
"" enable auto_save may erase all marks while exiting ctrlp's quick window
let g:bookmark_auto_save = 0

