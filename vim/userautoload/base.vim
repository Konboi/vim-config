" 行番号を表示する
set number

" 編集中のファイルを表示する
set title

" 対応するをハイライト
set showmatch

" コードの色付け
syntax on

" タブ入力を複数の空白入力に置き換える
set expandtab

"自動インデントでずれる幅
set shiftwidth=4

" インデントをスペース4に
set tabstop=4

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" 検索時に大文字/小文字を区別なく検索する
set ignorecase

"検索文字列に大文字が含まれている場合は区別して検索
set smartcase

" 最後まで検索したら最初から
set wrapscan

" 行の折り返しをやめる
:set nowrap

" クリップボート連携
set clipboard=unnamed,autoselect

nnoremap <F4> :e ~/.vim/userautoload/base.vim<CR>
nnoremap <F5> :source ~/.vimrc<CR>
nnoremap <silent> ;w :w<CR>
nnoremap <silent> ;q :q<CR>
nnoremap <BS> :b#<CR>

nnoremap vv ^v$h
vnoremap vv $h

" matchit.vim
runtime macros/matchit.vim

"expand mark
nnoremap ms ms%
nnoremap <silent> my my:'s,'yy<CR>
nnoremap <silent> md md:'s,'dd<CR>

" NeoBundle
"
" 参考URL: http://qiita.com/us10096698/items/893f7e3c0b1ba69fdd23
set runtimepath+=~/.vim/bundle/neobundle.vim
if has('vim_starting')
  set nocompatible               " be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))


" Bundle Config

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'

" Indent guide
NeoBundle 'nathanaelkane/vim-indent-guides'

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


NeoBundle "szw/vim-tags"
NeoBundle 'alpaca-tc/alpaca_tags'
