" Importing Akita's vimrc
" http://github.com/akitaonrails/vimfiles
source ~/.vim/vimrc

set term=gnome-256color
colorscheme railscasts

set mouse=a
set ttymouse=xterm2

"set nowrap
set nu
set sts=2
set sw=2
set guifont=monaco:h11
set guioptions-=m
set guioptions-=T
set spelllang=pt_br
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
let g:tcommentMapLeaderOp1 = '<C-c>'
ab rdb require 'debugger';debugger

nmap <silent> <leader>t :CtrlP<Enter>
nmap <silent> <C-b> :CtrlPBuffer<Enter>
nmap <silent> <leader>r :CtrlPClearCache<Enter>
nmap Ç :
cmap <C-e> <C-r>=expand('%:p:h')<CR>/V

augroup filetypedetect
  autocmd BufRead,BufNewFile *.prawn set filetype=ruby
augroup END
let g:buffergator_suppress_keymaps = 1

cab W w
cab Q q
cab wQ wq
cab Wq wq
cab WQ wq
cab TAbnew tabnew
cab Tabnew tabnew

filetype plugin on
let g:JSLintHighlightErrorLine = 0
