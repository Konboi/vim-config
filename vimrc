filetype off
filetype plugin indent off


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
set shiftwidth=2

" インデントをスペース4に
set tabstop=2

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


" NeoBundle and ruby config
" 参考URL: http://qiita.com/us10096698/items/893f7e3c0b1ba69fdd23

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

""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'bbatsov/rubocop'
NeoBundle 'tpope/vim-endwise'


"" neosnippet
"" 参考URL: http://promamo.com/?p=1944

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'

"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" " SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" " For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" vim-snippets
NeoBundle 'honza/vim-snippets'

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
"
" " Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
 
"" end neosnippet


"" Color Setting
NeoBundle 'w0ng/vim-hybrid'
"color scheme
colorscheme hybrid

" set t_Co=256
"" end Color Setting

"" Git Config
NeoBundle 'tpope/vim-fugitive'

"" end git config

"" lightline
NeoBundle 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
"" end lightline

"" JavaScript Config
NeoBundle 'jiangmiao/simple-javascript-indenter'

"" end Javascript Config

"" HTML Config
NeoBundle "mattn/emmet-vim"

NeoBundle 'marijnh/tern_for_vim', {
  \ 'build': {
  \   'others': 'npm install'
  \}}

"" end HTML Config

"" vimfiler Config

NeoBundle "Shougo/vimfiler.vim"

"" end vimfiler Config

"" vim-gitgutter
NeoBundle "airblade/vim-gitgutter"

"" end vim-gitgutter

filetype plugin indent on
