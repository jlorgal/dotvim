set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set number                      " switch line numbering

"" Pathogen plugin
call pathogen#infect()

"" Default Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set softtabstop=4
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml
    " If vimrc file is written, apply the changes
    autocmd BufWritePost .vimrc source $MYVIMRC
endif

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase smartcase        " searches are case insensitive unless they contain at least one capital letter

let mapleader=","               " Replace the leader from \ to ,

"" Maps
" Edit vimrc in a tab
nmap <leader>v :tabedit $MYVIMRC<CR>

