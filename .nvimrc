set nocompatible
filetype off
set background=dark
set regexpengine=1
set t_Co=256
set ts=2
set sw=2
set tw=0
set mouse=a
set wildmenu
set number
set incsearch
set laststatus=2
set synmaxcol=120
set ttyfast
set lazyredraw
let ruby_no_expensive = 1
set timeout ttimeoutlen=50
let g:mustache_abbreviations = 1
set fillchars+=vert:\
set expandtab
set clipboard=unnamed

set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin('~/.nvim/bundle')
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-surround'
  Plugin 'Lokaltog/vim-powerline'
  Plugin 'kien/ctrlp.vim'
  Plugin 'vim-scripts/grep.vim'
  Plugin 'ngmy/vim-rubocop'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'neomake/neomake'
  Plugin 'tpope/vim-repeat'
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'othree/yajs.vim'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'othree/es.next.syntax.vim'
  Plugin 'morhetz/gruvbox'
  Plugin 'mileszs/ack.vim'
  Plugin 'vim-scripts/nerdtree-ack'
call vundle#end()

syntax enable
filetype plugin indent on

" remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" run lint on open and write using eslint install through npm
autocmd! BufWritePost * Neomake
autocmd! BufReadPost * Neomake

let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_verbose = 0
let g:neomake_warning_sign = {
  \ 'text': '⚠️',
  \ }
let g:neomake_error_sign = {
  \ 'text': '❌',
  \ }

colorscheme gruvbox
" just because NerdTree set it globally
hi vertsplit ctermfg=240 ctermbg=240
hi nontext ctermfg=232

let g:used_javascript_libs = 'react, redux'
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
let g:vimrubocop_config = '~/rubocop.yml'

autocmd Filetype javascript setlocal et ts=2 sw=2 tw=0
autocmd Filetype coffee setlocal et ts=2 sw=2 tw=0
autocmd Filetype ruby setlocal et ts=2 sw=2 tw=0
autocmd Filetype css setlocal et ts=2 sw=2 tw=0
autocmd Filetype scss setlocal et ts=2 sw=2 tw=0
autocmd Filetype html setlocal et ts=2 sw=2 tw=0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/spec/vcr/*,*/vendor/*,*/log/*,*/\.git/*,*/script/*,*/bin/*,*/coverage/*,*/db/seeds.rb,*/node_modules/*,*/dist/*

let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': [], 'AcceptSelection("t")': ['<cr>', '<c-m>'] }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|node_modules\|dist$'

vnoremap <C-c> "+y
vnoremap <C-v> "+p
map <S-g> :NERDTreeMirrorToggle<CR>
map ff <C-w>w

let g:ackprg = 'ag --nogroup --nocolor --column'

let c='a'
while c <= 'z' && c <= '10'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
