""""""""""""""""""""
  "vim-plug settings
"""""""""""""""""""" 

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'


""" SHIN's plugins 
Plug 'scrooloose/syntastic'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree' 
Plug 'chiel92/vim-autoformat'
Plug 'ryanoasis/vim-webdevicons'
Plug 'vim-scripts/indentpython.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'

" Initialize plugin system
call plug#end()


"""""""""""""
"syntastic setting
""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""
"My settings
"""""""""""""""
" insert mode 時にctrl-space を押した時にnullが入力されないようにする
imap <Nul> <Nop>

" escが遠いので代用する。
noremap <C-j> <Esc>
noremap! <C-j> <Esc>


" insert new line with CR
noremap <CR> o<ESC>k 

" save file
noremap <C-s> :w<CR>

" set clipboard as default registry
"set clipboard=unnamedplus

" copy to sclipboard in visualmode
vnoremap <C-c> "+y

" Autoformat shortcut
nnoremap <C-b> :Autoformat<CR>
" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>
""""""""""""""
"setting from "https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/#lets-make-an-ide"
""""""""""""""

" sprit setting
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python PEP8 indentation 
" au BufNewFile,BufRead *.py
            \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" HTML CSS JS indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Flagging Unnecessary Whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""""""""""""
"setting from some japanese site
"""""""""""

"文字コードをUFT-8に設定
set fenc=utf-8
set guifont=Go\ Mono\ Nerd\ Font\ Complete\ 11

colorscheme gruvbox
set background=dark    " Setting gruvbox dark mode

syntax on

" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系

set t_Co=256
" 行番号を表示
set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする


" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
