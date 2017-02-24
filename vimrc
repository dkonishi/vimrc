" Importing Akita's vimrc
" http://github.com/akitaonrails/vimfiles
source ~/.vim/vimrc

set term=gnome-256color
" colorscheme railscasts
" colorscheme badwolf
colorscheme spacegray

set mouse=a
set ttymouse=xterm2

"set nowrap
set nu
set sts=2
set sw=2
set guifont=monaco:h10
set guioptions-=m
set guioptions-=T
set spelllang=pt_br
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
let g:tcommentMapLeaderOp1 = '<C-c>'
ab rdb require 'debugger';debugger
ab rbb require 'byebug';byebug

nmap Y y$
" nmap <silent> <Leader>w :NERDTreeToggle<CR>
" nmap <silent> <leader>t :CtrlP<Enter>
nmap <silent> <C-b> :CtrlPBuffer<Enter>
nmap <silent> <leader>r :CtrlPClearCache<Enter>
nmap <silent> <leader>h :nohl<Enter>
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

let g:syntastic_python_checkers = ['flake8', 'pep8']

let g:JSLintHighlightErrorLine = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['.']
let g:clojure_fuzzy_indent_blacklist = []
