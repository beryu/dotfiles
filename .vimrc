set nocompatible
set backspace=start,eol,indent
set whichwrap=b,s,[,],<,>,~
set mouse=

" UNDOできる回数の上限
set undolevels=1000

" シンタックスハイライト設定
syntax on

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

filetype plugin on
filetype indent on

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
