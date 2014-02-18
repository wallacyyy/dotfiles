set re=1
let g:loaded_matchparen = 1
set encoding=utf-8
call pathogen#infect('~/.vim/bundle')
colorscheme Tomorrow-Night
set guifont=Monaco\ 11.2
set t_Co=256
set autoindent
syntax enable
set mouse=a                   
set wildmenu                  
set noswapfile
set number
set shiftwidth=2
set expandtab
set tabstop=2
autocmd VimEnter * NERDTree " redirect commands to nerdtree window
autocmd VimEnter * wincmd p " i didn't find any reference for 'p'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files=25

set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/public/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set incsearch
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nmap <A-1> :tabprevious<CR>  
nmap <A-2> :tabnext<CR>
nmap <A-w> :tabclose<CR>
nmap <A-s> :w<CR>
map <A-f> <C-w>w
map <leader>cc <C-/>
inoremap <A-h> <Home>
inoremap <A-l> <End>
set guioptions-=m
cd ~/dev/sigvia/
filetype plugin on
set laststatus=2
map <A-3> :NERDTreeToggle<CR>

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set synmaxcol=120
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

let ruby_no_expensive = 1

+" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
 +if executable('ag')
 +  " Use Ag over Grep
 +  set grepprg=ag\\ --nogroup\\ --nocolor
 +
 +  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
 +  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif


