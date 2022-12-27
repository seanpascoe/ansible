if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'wincent/ferret'

Plug 'elixir-editors/vim-elixir'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'neovimhaskell/haskell-vim'

Plug 'morhetz/gruvbox'

call plug#end()

" prevents unloading buffer when abandoned
set hidden
" show existing tab with 2 spaces
set tabstop=2
" indent by 2 spaces when auto indenting
set shiftwidth=2
" ensure when you hit tab it will actually use spaces
set expandtab
" show line relative numbers
set number relativenumber
set nofoldenable    " disable folding

au BufRead,BufNewFile *.md setlocal textwidth=80

colorscheme gruvbox
set background=dark    " Setting dark mode
" hi Normal ctermbg=none

hi ALEError ctermbg=52
hi ALEErrorSign ctermbg=none ctermfg=124
hi ALEWarningSign ctermbg=none ctermfg=LightYellow 
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '🗲'
let g:ale_change_sign_column_color = 1
hi ALESignColumnWithErrors ctermbg=none

nnoremap <c-p> :FZF<CR>
nnoremap <Leader>b :Buffer<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <S-l> gt
noremap <S-h> gT

set splitbelow
set splitright
set hlsearch

let mapleader = " "

map <Leader>s :wa<CR>
nmap <Leader>g :NERDTreeFind<CR>
nmap <Leader>t :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40

" if executable('rg')
"  let g:ackprg = 'rg --vimgrep --no-heading'
" endif

" let g:ackhighlight=1

let g:FerretMap=0
nmap <Leader>f <Plug>(FerretAck)
nmap <Leader>r <Plug>(FerretAcks)

nmap <Leader>q :q<CR>
