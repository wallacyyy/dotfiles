set term=xterm-256color
set nocompatible
filetype off
set background=dark
set expandtab
set regexpengine=1
set encoding=utf-8
set guifont=Monaco\ 14
set t_Co=256
set ts=2
set sw=2
set tw=0
set mouse=a
set wildmenu
set noswapfile
set number
set incsearch
set laststatus=2
set synmaxcol=120
set ttyfast
set lazyredraw
set tags=tags;/
let ruby_no_expensive = 1
set timeout ttimeoutlen=50
let g:mustache_abbreviations = 1
set fillchars+=vert:\ 

set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tpope/vim-surround'
  Plugin 'Lokaltog/vim-powerline'
  Plugin 'kien/ctrlp.vim'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'vim-scripts/grep.vim'
  Bundle 'kchmck/vim-coffee-script'
  Plugin 'majutsushi/tagbar'
  Plugin 'ngmy/vim-rubocop'
  Plugin 'derekwyatt/vim-scala'
  Bundle 'mustache/vim-mustache-handlebars'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'wallacyyy/mango.vim'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'scrooloose/syntastic'
call vundle#end()

syntax enable
filetype plugin indent on

colorscheme mango
" just because NerdTree set it globally
hi vertsplit ctermfg=240 ctermbg=240
hi nontext ctermfg=232

let g:syntastic_javascript_checkers = ['standard']
let g:used_javascript_libs = 'react, flux'
filetype plugin indent on
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
let g:vimrubocop_config = '~/rubocop.yml'

autocmd Filetype coffee setlocal et ts=2 sw=2 tw=0
autocmd Filetype ruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype python setlocal et ts=4 sw=4 tw=0
autocmd Filetype js setlocal et ts=2 sw=2 tw=0
autocmd Filetype css setlocal et ts=4 sw=4 tw=0
autocmd Filetype scss setlocal et ts=4 sw=4 tw=0
autocmd Filetype go setlocal ts=8 sw=8 tw=0

set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb,*/node_modules/*,*/dist/*

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'] }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|node_modules\|dist$'

map Esc <C-c>
map <S-g> :NERDTreeTabsToggle<CR>
nmap <S-t> :TagbarToggle<CR>
map ff <C-w>w
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

let c='a'
while c <= 'z' && c <= '10'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

