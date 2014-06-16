cd ~/dev/

let g:loaded_matchparen = 1
call pathogen#infect('~/.vim/bundle')
colorscheme Tomorrow-Night-Eighties
syntax enable
filetype plugin on
filetype indent plugin on
set re=1
set encoding=utf-8
set background=dark
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

autocmd Filetype ruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype js setlocal et ts=4 sw=4 tw=0
autocmd Filetype css setlocal et ts=4 sw=4 tw=0
autocmd Filetype go setlocal ts=8 sw=8 tw=0

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'] }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/public/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
autocmd VimEnter * wincmd p " i didn't find any reference for 'p'

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
map 1 gT
map 2 gt
map 3 :tabnew<CR>:e.<CR>
map <leader>cc <C-/>

if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let c='a'
while c <= 'z' && c <= '10'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
