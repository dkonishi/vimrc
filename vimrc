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
set guifont=monaco:h12
set guioptions-=m
set guioptions-=T
set spelllang=pt_br
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'

ab rdb require 'ruby-debug';debugger

nmap Y y$
nmap <silent> <leader>t :CtrlP<Enter>
nmap <silent> <C-b> :CtrlPBuffer<Enter>
nmap <silent> <leader>r :CtrlPClearCache<Enter>
nmap <C-h> i$<Esc>f(r f)xF$x
nmap <silent> <F3> :noh<Enter>
nmap <silent> <F4> gg=G''
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap Ç :
cmap <C-e> <C-r>=expand('%:p:h')<CR>/
nmap <silent> <F7> :%s/\(<\/[^>]*>\)/\1\r/g<Enter>
nmap <silent> <F8> :set wrap spell<Enter>

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
