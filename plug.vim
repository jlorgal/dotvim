"" Install vim-plug if not available yet
if empty(glob("~/.vim/autoload/plug.vim"))
  silent !mkdir -p ~/.vim/plugged ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

"" interface
Plug 'vim-airline/vim-airline'

"" tmux integration
Plug 'christoomey/vim-tmux-navigator'

"" utilities
Plug 'tpope/vim-surround'              " Surround element with a character (e.g. ') or a tag (e.g. html tag)
Plug 'ervandew/supertab'               " Autocompletion with tab

"" snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

"" file explorer
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

"" syntax
Plug 'scrooloose/syntastic'

"" typeScript
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}

"" json
Plug 'elzr/vim-json', {'for': 'json'}

call plug#end()

