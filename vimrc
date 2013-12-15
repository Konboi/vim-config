" 行番号を表示する
set number

" 編集中のファイルを表示する
set title

" 対応するをハイライト
set showmatch

" コードの色付け
syntax on

" インデントをスペース4に
set tabstop=4

" オートインデント
set smartindent

" 検索時に大文字/小文字を区別なく検索する
set ignorecase

"検索文字列に大文字が含まれている場合は区別して検索
set smartcase

" 最後まで検索したら最初から
set wrapscan

" jj で挿入モードを抜けるように
inoremap <expr> j getline('.')[col('.') - 2] ==# 'j' ? "\<BS>\<ESC>" : 'j'

