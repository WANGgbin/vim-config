set nu
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive' " git
Plug 'sickill/vim-monokai' " color
Plug 'tomasr/molokai'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/OmniCppComplete'
call plug#end()

" setting for plugin  nerdtree
let NERDTreeShowLineNumbers = 1
let NERDTreeShowHidden = 1

" setting for plugin vim-monokai
syntax enable
colorscheme molokai

" setting for ctags
nmap <F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q . -f .tags<CR><CR> :TlistUpdate<CR>

" setting for tags
set tags=./.tags;,.tags
set tags+=/usr/include/.tags

