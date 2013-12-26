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

" NeoBundle and ruby config
" 参考URL: http://qiita.com/us10096698/items/893f7e3c0b1ba69fdd23

if has('vim_starting')
	set nocompatible               " be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))


" Bundle Config

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'bbatsov/rubocop'
NeoBundle 'tpope/vim-endwise'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'


filetype plugin indent on     " required!
