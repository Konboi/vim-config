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

" 行の折り返しをやめる
:set nowrap

" クリップボート連携
set clipboard=unnamed,autoselect

" 括弧類の自動補完設定
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>


" NeoBundle
"
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
NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'

" Indent guide
NeoBundle 'nathanaelkane/vim-indent-guides'

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'bbatsov/rubocop'
NeoBundle 'tpope/vim-endwise'


"" neosnippet
"" 参考URL: http://promamo.com/?p=1944

NeoBundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

NeoBundle 'Shougo/neosnippet'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" For snippet_complete marker.
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

"" end HTML Config

"" NERDTree Config
NeoBundle "scrooloose/nerdtree"

NeoBundle 'scrooloose/nerdtree.git'
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode=2

"" end vimfiler Config

NeoBundle "szw/vim-tags"

"" vim-gitgutter
NeoBundle "airblade/vim-gitgutter"
"" end vim-gitgutter

"" Hightlight Tail space
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"" vim-over
NeoBundle "osyo-manga/vim-over"

"" ruby config
au BufNewFile,BufRead *.cap setf ruby
au BufNewFile,BufRead Gemfile setf ruby
""

"" Perl config
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl


"" vim-smartchr
NeoBundle "kana/vim-smartchr"
inoremap <buffer> <expr> = smartchr#loop('=', '=>', '==')
inoremap <buffer> <expr> - smartchr#loop('-', '->')
inoremap <buffer> <expr> < smartchr#loop('<', '<%', '<%=')
inoremap <buffer> <expr> > smartchr#loop('>', '%>')

"" vim markdown preview
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

filetype plugin indent on


