set nocompatible              " be iMproved, required

call plug#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Plug 'VundleVim/Vundle.vim'
Plug 'junegunn/vim-plug'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'dracula/vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
" Plug 'arcticicestudio/nord-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'valloric/youcompleteme'
Plug 'puddl3glum/freepascal-vim'
Plug 'ElmCast/elm-vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'vim-scripts/dbext.vim'
Plug 'zah/nim.vim'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'lifepillar/pgsql.vim'
Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

" All of your Plugins must be added before the following line
call plug#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Other settings for me after Vundle is done :)
" air-line
let g:airline_powerline_fonts = 1
" allow syntax highlighting in vim
syntax on

"filetype plugin indent on
set autoindent

" 4 spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2

" Fuck you, python syntax file
autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab

colorscheme gruvbox
set background=dark
" do both relative and the current line number
set number
set relativenumber

set linebreak

set wmh=0

set spelllang=en_us
set spellfile=~/.vim/spell/custom.utf-8.add
" set spell

" make vim transparent so it's pretty in arch
" hi Normal ctermbg=None
" hi NonText ctermbg=None

" set keybind for nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
" filetype plugin on
" source $HOME/.vim/botterm/botterm.vim

" set ctrl + dir to be ctrl+w dir
" maximize a window with C-_
map <C-_> <C-W>_<C-W>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>
map <C-H> <C-W>h<C-W>

" Set emmet leader to ctrl e instead of ctrl y
let g:user_emmet_leader_key='<C-E>'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic commands
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

