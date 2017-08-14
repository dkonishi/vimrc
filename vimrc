" Importing Akita's vimrc
" http://github.com/akitaonrails/vimfiles
source ~/.vim/vimrc

set term=gnome-256color
" colorscheme railscasts
" colorscheme badwolf
colorscheme spacegray

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
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let']
let g:clojure_fuzzy_indent_blacklist = ['-fn$','\v^with-%(meta|out-str|loading-context)$']

" Legacy comma-delimited string version; the list format above is
" recommended. Note that patterns are implicitly anchored with ^ and $.
let g:clojure_fuzzy_indent_patterns = 'with.*,def.*,let.*'
let g:clojure_align_multiline_strings = 1

let g:rbpt_colorpairs = [
    \ ['black',       'SeaGreen3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
