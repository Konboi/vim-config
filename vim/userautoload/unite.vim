" unite.vim
NeoBundle 'Shougo/neomru.vim'

" 入力モードで開始する
" let g:unite_enable_start_insert=1
" mru表示件数
let g:unite_source_file_mru_limit = 500

" ファイル一覧
nnoremap <silent> ;uf :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
" 常用セット
nnoremap <silent> ;uu :<C-u>Unite buffer file_mru<CR>

" Worksフォルダ
let $WORKS = $HOME."/workspace"
exec 'nnoremap <silent> ;uw :<C-u>Unite -input='.$WORKS.' file file/new<CR>'

" 行検索
nnoremap <silent> ;ul :<C-u>Unite line<CR>
