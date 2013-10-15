set nocompatible
set backspace=start,eol,indent
set whichwrap=b,s,[,],<,>,~
set mouse=

" UNDOできる回数の上限
set undolevels=1000

" インデント設定
set cindent
set shiftwidth=4
set expandtab " タブ文字を\tじゃなくスペースにする

" 行数表示設定
set number
set wrap

" 検索設定
set incsearch
set smartcase
set ignorecase
set hlsearch

" コマンドモードの入力補完設定
set wildmenu wildmode=list:full

" 記号類の文字化け対策
set ambiwidth=double

" Tabキー押下で15文字分進むショートカット設定
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-o>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-O>15<Left>

" Shift + Tabキー押下で15文字分戻るショートカット設定
nmap <silent> <C-n>      :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<cr>
vmap <silent> <C-n> <ESC>:update<CR>:bn<cr>
cmap <silent> <C-n> <ESC>:update<CR>:bn<cr>

" デフォルトの文字コードはUTF-8に設定
set encoding=utf-8

" ファイルエンコード変更のショートカット設定
nmap ,U :e ++enc=utf-8<CR>
nmap ,E :e ++enc=euc-jp<CR>
nmap ,S :e ++enc=cp932<CR>

" バックアップ設定
set backup
set backupdir=$HOME/.vim/backup
let &directory = &backupdir

" タイトル設定
set title

" NeoBundle
set nocompatible
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

set laststatus=2
set rtp+=~/.vim/neobundle/powerline/powerline/bindings/vim

filetype plugin indent on

" シンタックスハイライト設定
syntax on

