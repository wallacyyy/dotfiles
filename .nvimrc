set nocompatible
filetype off
call pathogen#infect('~/.nvim/bundle')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
colorscheme Tomorrow-Night
syntax enable
filetype plugin on
filetype indent plugin on
filetype indent on
set expandtab
set ts=2
set sw=2
set tw=0
set re=1
set encoding=utf-8
set guifont=Monaco\ 11.2
set t_Co=256
set mouse=a                   
set wildmenu                  
set noswapfile
set number
set incsearch
set laststatus=2
set synmaxcol=120
set ttyfast
set ttyscroll=3
set lazyredraw
let ruby_no_expensive = 1
set timeout ttimeoutlen=50
Bundle 'christoomey/vim-tmux-navigator'

autocmd Filetype ruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype js setlocal et ts=4 sw=4 tw=0
autocmd Filetype css setlocal et ts=4 sw=4 tw=0
autocmd Filetype go setlocal ts=8 sw=8 tw=0


set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'] }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map 1 gT
map Esc <C-c>
map 2 gt
map 3 :NERDTreeTabsToggle<CR>
map <leader>cc <C-/>
map ff <C-w>w
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>


let c='a'
while c <= 'z' && c <= '10'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
