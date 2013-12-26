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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
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
cd ~/development/github/sigvia/
filetype plugin on
set laststatus=2
map <A-3> :NERDTreeToggle<CR>
