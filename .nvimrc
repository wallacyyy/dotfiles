set nocompatible
filetype off
set background=dark
set expandtab
set regexpengine=1
set guifont=Monaco\ 14
set t_Co=256
set ts=2
set sw=2
set tw=0
set mouse=a
set wildmenu
set noswapfile
set number
set nohlsearch
set incsearch
set laststatus=2
set synmaxcol=120
set ttyfast
set lazyredraw
let ruby_no_expensive = 1
set timeout ttimeoutlen=50
let g:mustache_abbreviations = 1
set fillchars+=vert:\ 
set tags=tags;/

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
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'majutsushi/tagbar'
  Plugin 'ngmy/vim-rubocop'
  Plugin 'mustache/vim-mustache-handlebars'
  Plugin 'pangloss/vim-javascript'
  Plugin 'nanotech/jellybeans.vim'
  Plugin 'morhetz/gruvbox'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'jelera/vim-javascript-syntax'
call vundle#end()

syntax enable
filetype plugin indent on

let g:deoplete#enable_at_startup = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" just because NerdTree set it globally
hi vertsplit ctermfg=240 ctermbg=240
hi nontext ctermfg=232

let g:syntastic_javascript_checkers = ['standard']
let g:used_javascript_libs = 'react, flux'
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
let g:vimrubocop_config = '~/rubocop.yml'

autocmd Filetype coffee setlocal et ts=2 sw=2 tw=0
autocmd Filetype ruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype eruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype python setlocal et ts=4 sw=4 tw=0
autocmd Filetype js setlocal et ts=2 sw=2 tw=0
autocmd Filetype css setlocal et ts=2 sw=2 tw=0
autocmd Filetype scss setlocal et ts=2 sw=2 tw=0
autocmd Filetype go setlocal ts=8 sw=8 tw=0

set wildignore+=tags,*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb,*/node_modules/*,*/dist/*

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'] }
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|node_modules\|dist$'
let g:rspec_runner = "os_x_iterm"

map Esc <C-c>
map <S-g> :NERDTreeTabsToggle<CR>
nmap <S-t> :TagbarToggle<CR>
map <C-p> :CtrlP .<CR>
map ff <C-w>w
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
xnoremap p pgvy
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let c='a'
while c <= 'z' && c <= '10'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
