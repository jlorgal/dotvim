set nocompatible                " Choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set relativenumber              " switch line numbering
let mapleader=","               " Replace the leader from \ to ,

"" Load vim-plug (plugin manager) and all its plugins
if empty(glob("~/.vim/autoload/plug.vim"))
  execute 'mkdir -p ~/.vim/plugged ~/.vim/autoload'
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

source ~/.vim/plug.vim

"" Default Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set softtabstop=2
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set smartindent
set cindent
set pastetoggle=<f5>

" Enable file type detection
filetype on
filetype plugin on
" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
" Wrap long lines in text files
autocmd FileType text setlocal wrap linebreak
" If vimrc file is written, apply the changes
autocmd BufWritePost .vimrc source $MYVIMRC

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase smartcase        " searches are case insensitive unless they contain at least one capital letter

"" Enable autocompletion
setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"" Plugin supertab
let g:SuperTabDefaultCompletionType="context"

"" Plugin syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"" Plugin typescript-vim
let g:typescript_compiler_binary = 'ntsc' " tsc or ntsc

"" Plugin vim-go
" Use goimports for formatting
let g:go_fmt_command = "goimports"
" Turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" Syntax checkers
let g:syntastic_go_checkers = ['go', 'golint']
" Open go doc in horizontal
autocmd Filetype go nnoremap <leader>d :sp <CR>:exe "GoDef" <CR>

"" Plugin vim-airline
"set noshowmode   " The vim mode is provided by airline
set laststatus=2 " Force status line even with only one window

"" Maps
" Edit vimrc in a tab
nmap <leader>v :tabedit $MYVIMRC<CR>
" Change window
nmap <leader><leader> <C-w>w
" Switch nerdtree
nmap <leader>n :NERDTreeToggle<CR>
" Search current word in project files
nnoremap <leader>f :grep! "\b<C-R><C-W>\b"<CR>
" Write date
nnoremap <leader>d :r! date "+\%Y/\%m/\%d"<CR>A

